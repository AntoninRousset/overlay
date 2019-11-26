# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7} )
PYTHON_REQ_USE="tk?,threads(+)"

inherit distutils-r1 flag-o-matic virtualx toolchain-funcs prefix

DESCRIPTION="Pure python plotting library with matlab like syntax"
HOMEPAGE="https://matplotlib.org"
JQUERY_UI="jquery-ui-1.12.1"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz
		 https://jqueryui.com/resources/download/${JQUERY_UI}.zip"

SLOT="0"
# Main license: matplotlib
# Some modules: BSD
# matplotlib/backends/qt4_editor: MIT
# Fonts: BitstreamVera, OFL-1.1
LICENSE="BitstreamVera BSD matplotlib MIT OFL-1.1"
KEYWORDS="~amd64 ~x86"
IUSE="tk qt5 gtk wxwidgets cairo server ffmpeg imagemagick pillow latex"

RDEPEND="
	${PYTHON_DEPS}
	virtual/pkgconfig
	>=media-libs/freetype-2.3.0
	>=media-libs/libpng-1.2
	>=dev-python/numpy-1.11.0[${PYTHON_USEDEP}]
	>=dev-python/setuptools-40.6.3[${PYTHON_USEDEP}]
	>=dev-python/cycler-0.10.0[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.1.0[${PYTHON_USEDEP}]
	>=dev-python/kiwisolver-1.0.1[${PYTHON_USEDEP}]
	>=dev-python/pyparsing-2.3.1[${PYTHON_USEDEP}]

	tk? ( >dev-lang/tk-8.6.1 )
	qt5? ( dev-python/PyQt5[${PYTHON_USEDEP}] )
	gtk? ( dev-python/pygobject[${PYTHON_USEDEP}] )
	wxwidgets? ( dev-python/wxpython[${PYTHON_USEDEP}] )
	cairo? (
		|| (
			>=dev-python/cairocffi-0.8.0[${PYTHON_USEDEP}]
			dev-python/pycairo[${PYTHON_USEDEP}]
		)
	)
	server? ( www-servers/tornado )
	ffmpeg? ( virtual/ffmpeg )
	imagemagick? ( media-gfx/imagemagick )
	pillow? ( >=dev-python/pillow-3.4[${PYTHON_USEDEP}] )
	latex? (
		virtual/latex-base
		>=app-text/ghostscript-gpl-9.0
	)
"

DEPEND="${RDEPEND}"

REQUIRED_USE="
	${PYTHON_REQUIRED_USE}
"

python_prepare_all() {
	distutils-r1_python_prepare_all
	mv "${WORKDIR}"/${JQUERY_UI} "${WORKDIR}"/${P}/lib/matplotlib/backends/web_backend/
}

