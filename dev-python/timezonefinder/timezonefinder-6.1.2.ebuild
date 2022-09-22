# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=poetry
PYTHON_COMPAT=( python3_{8..10} )

inherit distutils-r1

MY_P="${P}"
DESCRIPTION="Find the timezone of any point on earth offline"
HOMEPAGE="
	https://timezonefinder.michelfe.it/gui/
	https://pypi.org/project/${PN}/
	https://github.com/jannikmi/timezonefinder/
"
SRC_URI="
	mirror://pypi/${PN:0:1}/${PN}/${MY_P}.tar.gz -> ${P}.tar.gz
"
S="${WORKDIR}/${MY_P}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND="
	>=dev-python/h3-3.7.3[${PYTHON_USEDEP}]
	>=dev-python/numpy-1.22[${PYTHON_USEDEP}]
	virtual/python-cffi[${PYTHON_USEDEP}]
"
BDEPEND="
	>=dev-python/poetry-core-1.1.13
	>=dev-python/setuptools-65.3.0
"
