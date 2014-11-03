LOCALBASE ?=	/usr/local
PREFIX	?=	/usr/local
CFLAGS += -Wall -Werror -I${LOCALBASE}/include `MagickWand-config --cflags --cppflags` -DMAGICKCORE_HDRI_ENABLE=0 -DMAGICKCORE_QUANTUM_DEPTH=16 -DNO_JASPER 
LIBS	?=	-L${LOCALBASE}/lib
LDFLAGS += `MagickWand-config --ldflags --libs` -lm -llcms2 -ljpeg
INSTALL_CMD ?=	install
STRIP_CMD ?=	strip

all: dcraw-m

dcraw-m:
	${CC} ${CFLAGS} ${LIBS} ${LDFLAGS} -o dcraw-m dcraw-m.c

clean:
	rm dcraw-m

install:
	${INSTALL_CMD} -m 0755 -g wheel -o root dcraw-m ${STAGEDIR}${PREFIX}/bin
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/dcraw-m

deinstall:
	rm -f ${PREFIX}/bin/dcraw-m
