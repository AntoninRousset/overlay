# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CARGO_OPTIONAL=1
DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{4..10} )

CRATES="
	lazy_static-1.4.0
	rand-0.8.5
	onig-6.4.0
	regex-1.3.9
	regex-syntax-0.6.27
	rayon-1.3.1
	rayon-cond-0.1.0
	serde-1.0.144
	serde-json-1.0.85
	clap-2.33.4
	unicode-normalization-alignments-0.1.12
	unicode_categories-0.1.1
	unicode-segmentation-1.6.0
	indicatif-0.15.0
	itertools-0.9.0
	log-0.4.17
	derive_builder-0.9.0
	spm_precompiled-0.1.4
	dirs-3.0.2
	reqwest-0.11.11
	cached-path-0.5.3
	aho-corasick-0.7.19
	paste-1.0.6
	macro_rules_attribute-0.1.2
	thiserror-1.0.30
	fancy-regex-0.10.0
	getrandom-0.2.6
	esaxx-rs-0.1.8
"

inherit cargo distutils-r1

MY_P="${P}"
DESCRIPTION="Clustering based on density with variable density clusters"
HOMEPAGE="
	https://pypi.org/project/${PN}/
	https://github.com/scikit-learn-contrib/hdbscan
"
SRC_URI="
	mirror://pypi/${PN:0:1}/${PN}/${MY_P}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris ${CRATES})
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

BDEPEND="
     dev-python/setuptools-rust[${PYTHON_USEDEP}]
"
