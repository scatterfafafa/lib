all: libOmptarget.so

libOmptarget.so: nvidia.c
	gcc -Wall -fPIC -shared -o libOmptarget.so nvidia.c -ldl

.PHONY clean:
	rm -f libOmptarget.so
