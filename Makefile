

srcs=$(shell find . -name "*.cpp")
objs=$(patsubst %.cpp,%.o,$(srcs))


.PHONY:all
all:$(objs)
	$(CXX) $(objs) -o test

.PHONY:clean
clean:
	rm -rf $(objs) test
