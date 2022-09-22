# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..10} )

inherit distutils-r1

MY_P="${P}"
DESCRIPTION="Hierarchical hexagonal geospatial indexing system"
HOMEPAGE="
	https://uber.github.io/h3-py/
	https://pypi.org/project/${PN}/
	https://github.com/uber/h3-py/
"
SRC_URI="
	mirror://pypi/${PN:0:1}/${PN}/${MY_P}.tar.gz -> ${P}.tar.gz
"
S="${WORKDIR}/${MY_P}"

LICENSE="Apache"
SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND=""
BDEPEND="
	dev-python/cython
	dev-python/scikit-build
	dev-util/cmake
"
