# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit autotools

DESCRIPTION='C++ library and command-line utility for reading GDSII geometry files'
HOMEPAGE="https://github.com/HomerReid/${PN}"
SRC_URI="${HOMEPAGE}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE='GPL-2'
SLOT='0'
KEYWORDS='amd64 x86'

IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"

src_prepare() {
	default
	eautoreconf
}

