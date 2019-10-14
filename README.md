# A Trivial QOTD server

This repository contains a trivial QOTD server that is used for a
practical interview question.

The server binary, in [`cmd/quotes`](cmd/quotes) listens for HTTP
connections. It will serve a random quote from a SQL database on `/`. 
It also responds to `/healthz` with a `200 OK` response if the database
connection is functioning.

```
$ ./quotes --help
a trivial QOTD server

Usage:
  quotes [flags]

Flags:
  -b, --bind string      the IP and port number to bind to (default "0.0.0.0:0")
  -c, --connect string   the connection URL to use (default "postgresql://quotes@127.0.0.1:26257/quotes?sslmode=disable")
  -h, --help             help for quotes
```

The database schema, and some example data is located in the
[`schema`](schema) directory.