# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{6..10} )
DISTUTILS_USE_PEP517=setuptools
DISTUTILS_OPTIONAL=1

inherit cmake distutils-r1

MY_P="${P}"
DESCRIPTION="A library for efficient similarity search and clustering of dense vectors"
HOMEPAGE="
	https://faiss.ai/
"
SRC_URI="
	https://github.com/facebookresearch/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz
"
S="${WORKDIR}/${MY_P}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE="cuda +python test"
REQUIRED_USE="python? ( ${PYTHON_REQUIRED_USE} )"

RDEPEND="
	virtual/blas
	cuda? (
		dev-util/nvidia-cuda-toolkit
	)
	python? (
		${PYTHON_DEPS}
		dev-python/numpy[${PYTHON_USEDEP}]
	)
"
BDEPEND="
	python? (
		${DISTUTILS_DEPS}
		dev-lang/swig
		dev-python/setuptools[${PYTHON_USEDEP}]
	)
"

src_prepare() {
	cmake_src_prepare
    if use python; then
        pushd faiss/python > /dev/null || die
        distutils-r1_src_prepare
        popd > /dev/null || die
    fi
}

src_configure() {
	local mycmakeargs=(
		-DFAISS_ENABLE_GPU=$(usex cuda)
		-DFAISS_ENABLE_PYTHON=$(usex python)
		-DBUILD_TESTING=$(usex test)
    )
    cmake_src_configure
	if use python; then
        pushd "${BUILD_DIR}/faiss/python" > /dev/null || die
        distutils-r1_src_configure
        popd > /dev/null || die
    fi
}

src_compile() {
    cmake_src_compile
    if use python; then
        pushd "${BUILD_DIR}/faiss/python" > /dev/null || die
        distutils-r1_src_compile
        popd > /dev/null || die
    fi
}

src_install() {
    cmake_src_install
    if use python; then
        pushd "${BUILD_DIR}/faiss/python" > /dev/null || die
        distutils-r1_src_install
        popd > /dev/null || die
    fi
}
