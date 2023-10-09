package main

import "fmt"

import (
	_ "github.com/gin-gonic/gin"
	_ "github.com/mattn/go-sqlite3"
)

func main() {
	fmt.Println("Hello")
}
