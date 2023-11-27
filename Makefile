# this is Virgil's work; see https://git.sr.ht/~vdupras/tumbleforth

buckleupcc: buckleup.c
	$(CC) -o $@ buckleup.c

noop: noop.asm
	nasm -f elf64 noop.asm
	ld -o $@ noop.o

buckleup: buckleup.asm
	nasm -f elf64 buckleup.asm
	ld -o $@ buckleup.o

.PHONY: runcc
runcc: buckleupcc
	./buckleupcc; echo $$?

.PHONY: discc
discc: buckleup
	objdump -d buckleupcc

.PHONY: runnoop
runnoop: noop
	./noop

.PHONY: run
run: buckleup
	./buckleup; echo $$?

.PHONY: dis
dis: buckleup
	objdump -d buckleup
