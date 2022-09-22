# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{7..10} )

inherit distutils-r1

MY_P="${P}"
DESCRIPTION="Silky smooth profiling for the Django Framework"
HOMEPAGE="
	https://pypi.org/project/${PN}/
	https://github.com/jazzband/django-silk/
"
SRC_URI="
	mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz -> ${P}.tar.gz
"
S="${WORKDIR}/${MY_P}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND="
    >=dev-python/django-3.2[${PYTHON_USEDEP}]
    <dev-python/django-4.2[${PYTHON_USEDEP}]
	>=dev-python/networkx-2.6[${PYTHON_USEDEP}]
	>=dev-python/pillow-9.0.1[${PYTHON_USEDEP}]
	>=dev-python/pydot-1.4.2[${PYTHON_USEDEP}]
	>=dev-python/pygments-2.12.0-r1[${PYTHON_USEDEP}]
	>=dev-python/simplejson-3.17.6[${PYTHON_USEDEP}]
"
