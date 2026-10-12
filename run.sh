#!/bin/sh
cd "$(dirname "$0")"
mkdir -p out
javac -d out src/payroll/Main.java || exit 1
java -cp out payroll.Main
