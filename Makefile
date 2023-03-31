minimal.o: minimal.S
	arm-none-eabi-as -o minimal.o minimal.S

all: minimal.o stm32.ld
	arm-none-eabi-ld -Tstm32.ld -o minimal.elf minimal.o

clean:
	rm minimal.o minimal.elf

.PHONY: clean