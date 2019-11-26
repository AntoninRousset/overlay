# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{5,6} )

inherit distutils-r1

DESCRIPTION="Python bindings for libsrtp"
HOMEPAGE="https://github.com/aiortc/${PN}"
SRC_URI="${HOMEPAGE}/archive/${PV}.tar.gz -> ${P}.tar.gz"


SLOT="0"
LICENSE="BSD"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	${PYTHON_DEPS}
	virtual/pkgconfig
	net-libs/libsrtp
"

DEPEND="${RDEPEND}"

REQUIRED_USE="
	${PYTHON_REQUIRED_USE}
"

#python_prepare_all() {
#	distutils-r1_python_prepare_all
#	mv "${WORKDIR}"/${JQUERY_UI} "${WORKDIR}"/${P}/lib/matplotlib/backends/web_backend/
#}

