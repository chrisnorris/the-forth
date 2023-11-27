# this is Virgil's work; see https://git.sr.ht/~vdupras/tumbleforth

noop: noop.asm
	nasm -f elf64 noop.asm
	ld -o $@ noop.o

buckleup: buckleup.asm
	nasm -f elf64 buckleup.asm
	ld -o $@ buckleup.o

.PHONY: runnoop
runnoop: noop
	./noop

.PHONY: runbuckle
run: buckleup
	./buckleup; echo $$?

.PHONY: dis
dis: buckleup
	objdump -d buckleup

hello.img: hello.asm
	nasm -o $@ hello.asm

.PHONY: runhello
run: hello.img
	qemu-system-i386 -hda hello.img
