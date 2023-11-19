import os

size = os.path.getsize("lab2test.bin")

small = open("lab2test.bin", "rb")
big = open("big2test.img", "wb")
big.write(small.read())
bytes = b'\x00' * (1474560 - size)
big.write(bytes)