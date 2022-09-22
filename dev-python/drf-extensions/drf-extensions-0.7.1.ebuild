# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

MY_P="${P}"
DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{2..10} )

inherit distutils-r1

DESCRIPTION="Extensions for Django REST Framework"
HOMEPAGE="
	https://pypi.org/project/${PN}/
	https://github.com/chibisov/drf-extensions/
	chibisov.github.io/drf-extensions/docs/
"
SRC_URI="
	mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz -> ${P}.tar.gz
"
S="${WORKDIR}/${MY_P}"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND="
	>=dev-python/django-2.2[${PYTHON_USEDEP}]
	>=dev-python/djangorestframework-3.9.3[${PYTHON_USEDEP}]
"
