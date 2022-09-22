# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{5..10} )

inherit distutils-r1

MY_P="${P/-/_}"
DESCRIPTION="Recognize faces from Python or from the command line"
HOMEPAGE="
	https://pypi.org/project/${PN}/
	https://github.com/ageitgey/face_recognition/
"
SRC_URI="
	mirror://pypi/${PN:0:1}/${PN}/${MY_P}.tar.gz -> ${P}.tar.gz
"
S="${WORKDIR}/${MY_P}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND="
	>=dev-python/click-6.0[${PYTHON_USEDEP}]
	dev-python/face_recognition_models[${PYTHON_USEDEP}]
	dev-python/numpy[${PYTHON_USEDEP}]
	dev-python/pillow[${PYTHON_USEDEP}]
	dev-python/scipy[${PYTHON_USEDEP}]
	>=sci-libs/dlib-19.3.0[${PYTHON_USEDEP}]
"
