import os

with open('word.txt') as file:
    dump = file.read()
    dump = dump.splitlines()

    print(dump)

