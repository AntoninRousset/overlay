# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools flag-o-matic

DESCRIPTION='Free finite-difference time-domain (FDTD) software for electromagnetic simulations'
HOMEPAGE="https://github.com/NanoComp/${PN}"
SRC_URI="${HOMEPAGE}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE='GPL-2'
SLOT='1'
KEYWORDS='amd64 x86'

IUSE="+python +guile +mpb +hdf5 +lapack +harminv mpi +GDSII"

RDEPEND="
	virtual/pkgconfig
	python? (
		dev-lang/python
		>=dev-python/matplotlib-3.1.1
		guile? ( >=sci-libs/libctl-4.0.0[guile] )
		!guile? ( >=sci-libs/libctl-4.0.0 )
	)
	lapack? (
		virtual/blas
		virtual/lapack
		harminv? (
			sci-physics/harminv
			mpb? ( sci-physics/mpb )
		)
	)
	mpi? ( virtual/mpi )
	hdf5? (
		mpi? ( sci-libs/hdf5[mpi] )
		!mpi? ( sci-libs/hdf5 )
	)
	GDSII? ( sci-libs/libGDSII )
"

DEPEND="${RDEPEND}"

src_prepare() {
	default
	eautoreconf
}

src_configure() {
	econf --enable-maintainer-mode
}

