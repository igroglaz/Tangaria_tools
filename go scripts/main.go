package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strings"
)

func main() {
	file, err := os.Open("terrain.txt")
	if err != nil {
		log.Fatal(err)
	}
	defer file.Close()

	file2, err := os.Create("new_terrain.txt")
	if err != nil {
		panic(err)
	}

	file3, err := os.Create("list-terrain.h")
	if err != nil {
		panic(err)
	}

	scanner := bufio.NewScanner(file)
	for scanner.Scan() {
		line := scanner.Text()
		if len(line) > 5 && line[:5] == "name:" {
			code := ""
			code = line[5:]
			code = strings.ToUpper(code)
			code = strings.ReplaceAll(code, " ", "_")
			line += "\ncode:" + code
			fmt.Fprintln(file3, "FEAT("+code+")") // output to .h file
		}
		fmt.Fprintln(file2, line)
	}

	if err := scanner.Err(); err != nil {
		log.Fatal(err)
	}
}
