package main

import (
	"fmt"
	"go-make-monorepo/libs/lib1"
)

func print() {
	lib1.Print()
	fmt.Println("app1")
}

func main() {
	print()
}
