# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools flag-o-matic

DESCRIPTION='Harmonic inversion algorithm of Mandelshtam'
HOMEPAGE="https://github.com/NanoComp/${PN}"
SRC_URI="${HOMEPAGE}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE='GPL-2'
SLOT='1'
KEYWORDS='amd64 x86'

IUSE=""

RDEPEND="
	virtual/blas
	virtual/lapack
"

DEPEND="${RDEPEND}"

src_prepare() {
    default
    eautoreconf
}

src_configure() {
	append-flags -fPIC
	econf --enable-maintainer-mode
}

