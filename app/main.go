package main

import (
	"fmt"
	"net/http"
)

// httpで受付てHelloを返す
func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprint(w, "Hello")
	})

	http.ListenAndServe(":8080", nil)
}
