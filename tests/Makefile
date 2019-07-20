.PHONY: all clean

insts := $(patsubst %.s,%.bin,$(wildcard *.s))

all: ${insts}

%.bin: %.s
	./assembler.sh $^

clean:
	rm -f *.bin *.o *.run
