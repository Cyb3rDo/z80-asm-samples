# Fuse machines: 16 48 48_ntsc 128 plus2 plus2a plus3 2048 2068 ts2068 pentagon pentagon512 pentagon1024 scorpion se

EMULATOR_PATH=/Applications/Fuse.app/Contents/MacOS/Fuse
EMULATOR_OPTS=--machine 48

run: underline.tap
	$(EMULATOR_PATH) underline.tap $(EMULATOR_OPTS)

underline.bin underline.tap:
	sjasmplus underline.asm

bytes.tap: underline.bin
	mctrd new bytes.tap
	mctrd add underline.bin bytes.tap

asm: underline.bin
	z80dasm -l underline.bin

hexdump: underline.bin
	hexdump -C underline.bin

clean:
	rm -f underline.bin underline.tap bytes.tap
