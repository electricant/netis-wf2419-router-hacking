INCLUDEDIR = .
LZMAPATH = ./lzma/SRC/7zip/Compress/LZMA_Lib

CFLAGS := -I$(INCLUDEDIR) -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -O2 \
	-fcommon -std=gnu89

all: mksquashfs mksquashfs-lzma

mksquashfs: mksquashfs.o read_fs.o sort.o
	$(CC) mksquashfs.o read_fs.o sort.o -lz -o $@

mksquashfs-lzma: mksquashfs.o read_fs.o sort.o
	ln -s sdk443 ./lzma/SRC
	make -C $(LZMAPATH)
	$(CXX) mksquashfs.o read_fs.o sort.o -L$(LZMAPATH) -llzma -o $@

mksquashfs.o: mksquashfs.c mksquashfs.h

read_fs.o: read_fs.c read_fs.h

sort.o: sort.c

clean:
	make -C $(LZMAPATH) clean
	- rm -f *.o mksquashfs mksquashfs-lzma ./lzma/SRC
