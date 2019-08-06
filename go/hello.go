package main

import "fmt"

func trampoline(arg uint64) uint64

func main() {
	fmt.Println("Hello from go")

	result := trampoline(55)
	
	fmt.Printf("Result from ffi_rand(55) = %d", result)
}