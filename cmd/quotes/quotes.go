package main

import (
	"context"
	"log"
	"os"
	"os/signal"

	"github.com/cockroachlabs/quotes/internal/quotes"
	"github.com/spf13/cobra"
)

func main() {
	s := &quotes.Server{}
	root := &cobra.Command{
		Use:   "quotes",
		Short: "a trivial QOTD server",
		RunE: func(cmd *cobra.Command, args []string) error {
			signals := make(chan os.Signal)
			signal.Notify(signals, os.Interrupt, os.Kill)

			ctx, cancel := context.WithCancel(context.Background())
			go func() {
				<-signals
				cancel()
			}()

			return s.Run(ctx)
		},
	}
	root.Flags().StringVarP(&s.BindAddr, "bind", "b",
		"0.0.0.0:0", "the IP and port number to bind to")
	root.Flags().StringVarP(&s.ConnectString, "connect", "c",
		"postgresql://quotes@127.0.0.1:26257/quotes?sslmode=disable", "the connection URL to use")

	if err := root.Execute(); err != nil {
		log.Println(err)
		os.Exit(1)
	}
	os.Exit(0)
}
