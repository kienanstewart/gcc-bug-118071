lib.so: lib.cpp lib.h
	g++ -o lib.so -shared -fvisibility=hidden -fvisibility-inlines-hidden -fPIC lib.h lib.cpp -save-temps

list: lib.so
	nm -g -D -C lib.so
clean:
	rm -f lib.so

.PHONY:
	clean
