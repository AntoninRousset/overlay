# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{5,6} )

inherit distutils-r1

DESCRIPTION="A port of node.js's EventEmitter to python."
HOMEPAGE="https://pypi.org/project/pyee/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

SLOT="0"
LICENSE="MIT"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	${PYTHON_DEPS}
	virtual/pkgconfig
"

#pytest-asyncio needs python > 3.4
#pytest-futures need python < 3.0

DEPEND="
	${RDEPEND}
	dev-python/pytest-asyncio
	dev-python/pytest-runner
	dev-python/vcversioner
	dev-python/twisted
	dev-python/futures
"

REQUIRED_USE="
	${PYTHON_REQUIRED_USE}
"

