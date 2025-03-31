all: sample-aarch64 sample-x86_64 sample-i386 sample-powerpc

clean: 
	-rm sample-aarch64 sample-x86_64 sample-i386 sample-powerpc

sample-aarch64: sample.cpp
	g++ sample.cpp -o sample-aarch64

sample-x86_64: sample.cpp
	/usr/bin/x86_64-linux-gnu-g++ \
		sample.cpp \
		-static \
		-o sample-x64_86

sample-i386: sample.cpp
	i686-linux-gnu-g++ \
		sample.cpp \
		-static \
		-o sample-i386

sample-powerpc: sample.cpp
	powerpc64le-linux-gnu-g++ \
		sample.cpp \
		-I/usr/powerpc-linux-gnu/include \
		-L/usr/powerpc-linux-gnu/lib \
		-L/usr/lib/gcc-cross/powerpc-linux-gnu/12 \
		-mcpu=powerpc \
		-m32 \
		-static \
		-W
		-o sample-powerpc