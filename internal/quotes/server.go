package quotes

import (
	"context"
	"database/sql"
	"fmt"
	"log"
	"net"
	"net/http"
	"time"

	_ "github.com/lib/pq"
	wrap "github.com/mitchellh/go-wordwrap"
	"github.com/pkg/errors"
)

type Server struct {
	BindAddr      string
	ConnectString string

	db *sql.DB
}

func (s *Server) Run(ctx context.Context) error {
	if s.ConnectString == "" {
		return errors.New("no connection string given")
	}

	var err error
	if s.db, err = sql.Open("postgres", s.ConnectString); err != nil {
		return err
	}
	if err = s.db.Ping(); err != nil {
		return errors.Wrap(err, "could not ping database")
	}

	mux := http.NewServeMux()
	mux.HandleFunc("/", s.qotd)
	mux.HandleFunc("/healthz", s.healthz)

	server := http.Server{
		Addr:    s.BindAddr,
		Handler: mux,
	}

	listener, err := net.Listen("tcp", s.BindAddr)
	if err != nil {
		return errors.Wrap(err, "could not configure listener")
	}
	log.Printf("listening on %s", listener.Addr())

	go func() {
		<-ctx.Done()
		grace, _ := context.WithTimeout(context.Background(), 15*time.Second)
		if err := server.Shutdown(grace); err != nil {
			log.Printf("could not stop server: %v", err)
		}
	}()

	if err := server.Serve(listener); err == nil || err == http.ErrServerClosed {
		return nil
	} else {
		return errors.Wrap(err, "could not start server")
	}
}

func (s *Server) healthz(w http.ResponseWriter, req *http.Request) {
	if err := s.db.Ping(); err != nil {
		w.WriteHeader(http.StatusInternalServerError)
		log.Printf("health check failed: %v", err)
		return
	}

	w.Header().Add("Content-Type", "text/plain; charset=utf-8")
	w.WriteHeader(http.StatusOK)
	if _, err := w.Write([]byte("OK")); err != nil {
		log.Printf("could not write response: %v", err)
	}
}

func (s *Server) qotd(w http.ResponseWriter, req *http.Request) {
	var quote string
	var characters string
	var stardate *float64
	var episode int

	row := s.db.QueryRowContext(req.Context(), "SELECT quote, characters, stardate, episode FROM quotes WHERE id >= gen_random_uuid() LIMIT 1")
	if err := row.Scan(&quote, &characters, &stardate, &episode); err != nil {
		w.WriteHeader(http.StatusInternalServerError)
		log.Println(err)
		return
	}

	w.Header().Add("Content-Type", "text/plain; charset=utf-8")
	w.WriteHeader(http.StatusOK)

	var date string
	if stardate != nil && *stardate > 0 {
		date = fmt.Sprintf("Stardate: %8.1f", *stardate)
	}
	if _, err := fmt.Fprintf(w,
		"%s\n\n%80s\n%80s\n%80s\n",
		wrap.WrapString(quote, 70),
		characters,
		date,
		fmt.Sprintf("Episode: %8d", episode)); err != nil {
		log.Println(err)
	}
}
