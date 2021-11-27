#!/bin/sh
flex -o first.c First.l
gcc -o first first.c -lfl
