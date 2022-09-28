#	$NetBSD: bsd.hostprog.mk,v 1.1.1.1 2006/07/14 23:13:00 jlam Exp $
#	@(#)bsd.prog.mk	8.2 (Berkeley) 4/2/94

.if !target(__initialized__)
__initialized__:
.if exists(${.CURDIR}/../Makefile.inc)
.include "${.CURDIR}/../Makefile.inc"
.endif
.include <bsd.own.mk>
.include <bsd.obj.mk>
.include <bsd.depall.mk>
.MAIN:		all
.endif

.PHONY:		cleanprog 
clean cleandir: cleanprog

CFLAGS+=	${COPTS}

.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libbz2.a
LIBBZ2?=	${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libbz2.a
.else
LIBBZ2?=	${DESTDIR}/usr/lib/libbz2.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libc.a
LIBC?=		${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libc.a
.else
LIBC?=		${DESTDIR}/usr/lib/libc.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libc_pic.a
LIBC_PIC?=	${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libc_pic.a
.else
LIBC_PIC?=	${DESTDIR}/usr/lib/libc_pic.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libcdk.a
LIBCDK?=	${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libcdk.a
.else
LIBCDK?=	${DESTDIR}/usr/lib/libcdk.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libcompat.a
LIBCOMPAT?=	${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libcompat.a
.else
LIBCOMPAT?=	${DESTDIR}/usr/lib/libcompat.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libcrypt.a
LIBCRYPT?=	${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libcrypt.a
.else
LIBCRYPT?=	${DESTDIR}/usr/lib/libcrypt.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libcurses.a
LIBCURSES?=	${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libcurses.a
.else
LIBCURSES?=	${DESTDIR}/usr/lib/libcurses.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libdbm.a
LIBDBM?=	${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libdbm.a
.else
LIBDBM?=	${DESTDIR}/usr/lib/libdbm.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libdes.a
LIBDES?=	${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libdes.a
.else
LIBDES?=	${DESTDIR}/usr/lib/libdes.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libedit.a
LIBEDIT?=	${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libedit.a
.else
LIBEDIT?=	${DESTDIR}/usr/lib/libedit.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libform.a
LIBFORM?=	${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libform.a
.else
LIBFORM?=	${DESTDIR}/usr/lib/libform.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libgcc.a
LIBGCC?=	${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libgcc.a
.else
LIBGCC?=	${DESTDIR}/usr/lib/libgcc.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libgnumalloc.a
LIBGNUMALLOC?=	${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libgnumalloc.a
.else
LIBGNUMALLOC?=	${DESTDIR}/usr/lib/libgnumalloc.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libintl.a
LIBINTL?=	${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libintl.a
.else
LIBINTL?=	${DESTDIR}/usr/lib/libintl.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libipsec.a
LIBIPSEC?=	${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libipsec.a
.else
LIBIPSEC?=	${DESTDIR}/usr/lib/libipsec.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libkdb.a
LIBKDB?=	${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libkdb.a
.else
LIBKDB?=	${DESTDIR}/usr/lib/libkdb.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libkrb.a
LIBKRB?=	${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libkrb.a
.else
LIBKRB?=	${DESTDIR}/usr/lib/libkrb.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libkvm.a
LIBKVM?=	${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libkvm.a
.else
LIBKVM?=	${DESTDIR}/usr/lib/libkvm.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libl.a
LIBL?=		${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libl.a
.else
LIBL?=		${DESTDIR}/usr/lib/libl.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libm.a
LIBM?=		${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libm.a
.else
LIBM?=		${DESTDIR}/usr/lib/libm.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libmenu.a
LIBMENU?=	${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libmenu.a
.else
LIBMENU?=	${DESTDIR}/usr/lib/libmenu.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libmp.a
LIBMP?=		${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libmp.a
.else
LIBMP?=		${DESTDIR}/usr/lib/libmp.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libntp.a
LIBNTP?=	${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libntp.a
.else
LIBNTP?=	${DESTDIR}/usr/lib/libntp.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libobjc.a
LIBOBJC?=	${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libobjc.a
.else
LIBOBJC?=	${DESTDIR}/usr/lib/libobjc.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libpc.a
LIBPC?=		${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libpc.a
.else
LIBPC?=		${DESTDIR}/usr/lib/libpc.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libpcap.a
LIBPCAP?=	${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libpcap.a
.else
LIBPCAP?=	${DESTDIR}/usr/lib/libpcap.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libplot.a
LIBPLOT?=	${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libplot.a
.else
LIBPLOT?=	${DESTDIR}/usr/lib/libplot.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libposix.a
LIBPOSIX?=	${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libposix.a
.else
LIBPOSIX?=	${DESTDIR}/usr/lib/libposix.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libresolv.a
LIBRESOLV?=	${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libresolv.a
.else
LIBRESOLV?=	${DESTDIR}/usr/lib/libresolv.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/librpcsvc.a
LIBRPCSVC?=	${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/librpcsvc.a
.else
LIBRPCSVC?=	${DESTDIR}/usr/lib/librpcsvc.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libskey.a
LIBSKEY?=	${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libskey.a
.else
LIBSKEY?=	${DESTDIR}/usr/lib/libskey.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libtermcap.a
LIBTERMCAP?=	${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libtermcap.a
.else
LIBTERMCAP?=	${DESTDIR}/usr/lib/libtermcap.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libtelnet.a
LIBTELNET?=	${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libtelnet.a
.else
LIBTELNET?=	${DESTDIR}/usr/lib/libtelnet.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libutil.a
LIBUTIL?=	${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libutil.a
.else
LIBUTIL?=	${DESTDIR}/usr/lib/libutil.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libwrap.a
LIBWRAP?=	${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libwrap.a
.else
LIBWRAP?=	${DESTDIR}/usr/lib/libwrap.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/liby.a
LIBY?=		${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/liby.a
.else
LIBY?=		${DESTDIR}/usr/lib/liby.a
.endif
.if exists(${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libz.a
LIBZ?=		${DESTDIR}/usr/lib/${MACHINE_MULTIARCH}/libz.a
.else
LIBZ?=		${DESTDIR}/usr/lib/libz.a
.endif

.if defined(SHAREDSTRINGS)
CLEANFILES+=strings
.c.lo:
	${HOST_CC} -E ${CFLAGS} ${.IMPSRC} | xstr -c -
	@${HOST_CC} ${CFLAGS} -c x.c -o ${.TARGET}
	@rm -f x.c

.cc.lo:
	${HOST_CXX} -E ${CXXFLAGS} ${.IMPSRC} | xstr -c -
	@mv -f x.c x.cc
	@${HOST_CXX} ${CXXFLAGS} -c x.cc -o ${.TARGET}
	@rm -f x.cc

.C.lo:
	${HOST_CXX} -E ${CXXFLAGS} ${.IMPSRC} | xstr -c -
	@mv -f x.c x.C
	@${HOST_CXX} ${CXXFLAGS} -c x.C -o ${.TARGET}
	@rm -f x.C
.endif


.if defined(HOSTPROG)
SRCS?=		${HOSTPROG}.c

DPSRCS+=	${SRCS:M*.l:.l=.c} ${SRCS:M*.y:.y=.c}
CLEANFILES+=	${DPSRCS}
.if defined(YHEADER)
CLEANFILES+=	${SRCS:M*.y:.y=.h}
.endif

.if !empty(SRCS:N*.h:N*.sh)
OBJS+=		${SRCS:N*.h:N*.sh:R:S/$/.lo/g}
LOBJS+=		${LSRCS:.c=.ln} ${SRCS:M*.c:.c=.ln}
.endif

.if defined(OBJS) && !empty(OBJS)
.NOPATH: ${OBJS}

${HOSTPROG}: ${DPSRCS} ${OBJS} ${LIBC} ${DPADD}
	${HOST_LINK.c} ${HOST_LDSTATIC} -o ${.TARGET} ${OBJS} ${LDADD}

.endif	# defined(OBJS) && !empty(OBJS)

.if !defined(MAN)
MAN=	${HOSTPROG}.1
.endif	# !defined(MAN)
.endif	# defined(HOSTPROG)

realall: ${HOSTPROG}

cleanprog:
	rm -f a.out [Ee]rrs mklog core *.core \
	    ${HOSTPROG} ${OBJS} ${LOBJS} ${CLEANFILES}

beforedepend:
CPPFLAGS=	${HOST_CPPFLAGS}

.if defined(SRCS)
afterdepend: .depend
	@(TMP=/tmp/_depend$$$$; \
	    sed -e 's/^\([^\.]*\).o[ ]*:/\1.lo \1.ln:/' \
	      < .depend > $$TMP; \
	    mv $$TMP .depend)
.endif

lint: ${LOBJS}
.if defined(LOBJS) && !empty(LOBJS)
	${LINT} ${LINTFLAGS} ${LDFLAGS:M-L*} ${LOBJS} ${LDADD}
.endif

.include <bsd.man.mk>
.include <bsd.nls.mk>
.include <bsd.files.mk>
.include <bsd.inc.mk>
.include <bsd.links.mk>
.include <bsd.dep.mk>
.include <bsd.sys.mk>

# Make sure all of the standard targets are defined, even if they do nothing.
regress:
