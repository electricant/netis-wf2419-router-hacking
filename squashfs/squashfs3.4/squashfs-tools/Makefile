INSTALL_DIR = /usr/local/bin

INCLUDEDIR = .

CFLAGS := -I$(INCLUDEDIR) -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_GNU_SOURCE -O2 -fcommon -std=gnu89

all: mksquashfs unsquashfs

mksquashfs: mksquashfs.o read_fs.o sort.o
	$(CC) mksquashfs.o read_fs.o sort.o -std=gnu89 -lz -pthread -lm -o $@

mksquashfs.o: mksquashfs.c squashfs_fs.h mksquashfs.h global.h sort.h

read_fs.o: read_fs.c squashfs_fs.h read_fs.h global.h

sort.o: sort.c squashfs_fs.h global.h sort.h

unsquashfs: unsquashfs.o
	$(CC) unsquashfs.o -std=gnu89 -lz -pthread -lm -o $@

unsquashfs.o: unsquashfs.c squashfs_fs.h read_fs.h global.h

clean:
	-rm -f *.o mksquashfs unsquashfs

install: mksquashfs unsquashfs
	mkdir -p $(INSTALL_DIR)
	cp mksquashfs unsquashfs $(INSTALL_DIR)
