
all: dcraw-m

dcraw-m:
	${CC} ${CFLAGS} ${LDFLAGS} -o dcraw-m dcraw-m.c

clean:
	rm dcraw-m

install:
	install -m 0755 -g wheel -o root dcraw-m ${LOCALBASE}/bin

deinstall:
	rm -f ${LOCALBASE}/bin/dcraw-m
