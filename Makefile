ASM = nasm
FLAGS = -f elf64 -g -I src/
LINKER = ld

SOURCES = src/lionforth.asm
INCS = src/util.inc src/words.inc src/macro.inc
OBJECTS = obj/lionforth.o

EXECUTABLE = lionforth

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(LINKER) $(OBJECTS) -o $@

$(OBJECTS): $(SOURCES) $(INCS)
	$(ASM) $(FLAGS) $(SOURCES) -o $@

clean:
	find ./obj -type f -name "*.o" -delete
	rm $(EXECUTABLE)
