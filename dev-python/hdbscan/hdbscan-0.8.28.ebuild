# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{4..10} )

inherit distutils-r1

MY_P="${P}"
DESCRIPTION="Clustering based on density with variable density clusters"
HOMEPAGE="
	https://pypi.org/project/${PN}/
	https://github.com/scikit-learn-contrib/hdbscan/
"
SRC_URI="
	mirror://pypi/${PN:0:1}/${PN}/${MY_P}.tar.gz -> ${P}.tar.gz
"
S="${WORKDIR}/${MY_P}"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND="
	>=dev-python/numpy-1.20[${PYTHON_USEDEP}]
	>=dev-python/scipy-1.0[${PYTHON_USEDEP}]
	>=sci-libs/scikit-learn-0.20[${PYTHON_USEDEP}]
	>=dev-python/joblib-1.0[${PYTHON_USEDEP}]
"
