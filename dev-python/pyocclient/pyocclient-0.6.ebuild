# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{5..10} )

inherit distutils-r1

MY_P="${P}"
DESCRIPTION="Python client library for ownCloud"
HOMEPAGE="
	https://pypi.org/project/${PN}/
"
SRC_URI="
	mirror://pypi/${PN:0:1}/${PN}/${MY_P}.tar.gz -> ${P}.tar.gz
"
S="${WORKDIR}/${MY_P}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND="
	>=dev-python/requests-2.0.1[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
"
