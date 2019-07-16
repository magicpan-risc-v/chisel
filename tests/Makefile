.PHONY: all clean

insts := $(patsubst %.s,%.bin,$(wildcard *.s))

all: ${insts}

%.bin: %.s
	./assembler $^

clean:
	rm -f *.bin *.o *.run
