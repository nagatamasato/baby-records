package main

import (
    "fmt"
    "net/http"
)

func helloHandler(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintln(w, "Hello Baby Records Go Backend!")
}

func main() {
    http.HandleFunc("/", helloHandler)
    fmt.Println("Starting Baby Records Go Backend on port 8081...")
    err := http.ListenAndServe(":8081", nil)
    if err != nil {
        fmt.Println("Error starting server:", err)
    }
}

