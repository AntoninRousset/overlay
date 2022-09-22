# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..10} )

inherit distutils-r1

MY_P="${P}"
DESCRIPTION="Client library to download and publish models, datasets and other repos on the huggingface.co hub"
HOMEPAGE="
	https://pypi.org/project/${PN}/
	https://github.com/huggingface/huggingface_hub/
"
SRC_URI="
	mirror://pypi/${PN:0:1}/${PN}/${MY_P}.tar.gz -> ${P}.tar.gz
"
S="${WORKDIR}/${MY_P}"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND=""
BDEPEND="
	dev-python/filelock[${PYTHON_USEDEP}]
	>=dev-python/huggingface-hub-0.9.0[${PYTHON_USEDEP}]
	<dev-python/huggingface-hub-1[${PYTHON_USEDEP}]
	>=dev-python/numpy-1.17[${PYTHON_USEDEP}]
	>=dev-python/packaging-20.0[${PYTHON_USEDEP}]
	>=dev-python/pyyaml-5.1[${PYTHON_USEDEP}]
	dev-python/regex[${PYTHON_USEDEP}]
	!=dev-python/regex-2019.12.17[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	sci-libs/tokenizers[${PYTHON_USEDEP}]
	>=dev-python/tqdm-4.27[${PYTHON_USEDEP}]
"
