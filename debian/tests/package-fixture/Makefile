all: sanity

sanity:
	echo MAKEFLAGS="${MAKEFLAGS}"
	[ "${unix}" = "We run Debian" ]
	[ "${DOCDIR}" = /usr/share/doc ]

.include <bsd.prog.mk>

