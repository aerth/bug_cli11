CFLAGS += -Wall -Werror -pedantic -I. -Iinclude -Ispdlog/include -std=c++11 
LDFLAGS += 

test: deps myprog myprog-static

myprog-static: *.cpp
	$(CXX) -static -o $@ $(CFLAGS) $^ $(LDFLAGS) -static-libgcc -static-libstdc++
myprog: *.cpp
	$(CXX) -o $@ $(CFLAGS) $^ $(LDFLAGS)
clean:
	rm -f myprog myprog-static

deps: include/cli11
include/cli11:
	mkdir -p include/cli11/
	wget -O include/cli11/CLI11.hpp https://github.com/CLIUtils/CLI11/releases/download/v1.9.0/CLI11.hpp

