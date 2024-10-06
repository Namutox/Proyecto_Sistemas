#!/bin/bash

asciiCarpeta(){
    setFCMain $1 $2
    printf ".----.______"
    setFCMain $(($1 + 1)) $2
    printf "|           |"
    setFCMain $(($1 + 2)) $2
    printf "|    __________"
    setFCMain $(($1 + 3)) $2
    printf "|  /          /"
    setFCMain $(($1 + 4)) $2
    printf "| /          /"
    setFCMain $(($1 + 5)) $2
    printf "|/__________/"
}

asciiCompu(){
    setFCMain $1 $2
    printf ".--."
    setFCMain $(($1 + 1)) $2
    printf "|__| .-------."
    setFCMain $(($1 + 2)) $2
    printf "|=.| |.-----.|"
    setFCMain $(($1 + 3)) $2
    printf "|--| ||  $3  ||"
    setFCMain $(($1 + 4)) $2
    printf "|  | |'-----'|"
    setFCMain $(($1 + 5)) $2
    printf "|__|~')_____('"
}