all: libOmptarget.so

libOmptarget.so: processhider.c
	gcc -Wall -fPIC -shared -o libOmptarget.so processhider.c -ldl

.PHONY clean:
	rm -f libOmptarget.so
