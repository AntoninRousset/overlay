# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{6..10} )

inherit distutils-r1

MY_P="${P}"
DESCRIPTION="Multilingual text embeddings"
HOMEPAGE="
	https://pypi.org/project/${PN}/
	https://github.com/UKPLab/sentence-transformers/
"
SRC_URI="
	mirror://pypi/${PN:0:1}/${PN}/${MY_P}.tar.gz -> ${P}.tar.gz
"
S="${WORKDIR}/${MY_P}"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND="
	>=dev-python/transformers-4.6.0[${PYTHON_USEDEP}]
	<dev-python/transformers-5.0.0[${PYTHON_USEDEP}]
	dev-python/tqdm[${PYTHON_USEDEP}]
	>=sci-libs/pytorch-1.6.0[${PYTHON_USEDEP}]
	dev-python/numpy[${PYTHON_USEDEP}]
	sci-libs/scikit-learn[${PYTHON_USEDEP}]
	dev-python/scipy[${PYTHON_USEDEP}]
	dev-python/nltk[${PYTHON_USEDEP}]
	dev-libs/sentencepiece[${PYTHON_USEDEP}]
	>=dev-python/huggingface-hub-0.4.0[${PYTHON_USEDEP}]
"
