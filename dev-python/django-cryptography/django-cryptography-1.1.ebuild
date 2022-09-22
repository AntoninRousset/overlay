# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{7..10} )

inherit distutils-r1

MY_P="${P}"
DESCRIPTION="Easily encrypt data in Django"
HOMEPAGE="
	https://pypi.org/project/${PN}/
	https://github.com/georgemarshall/django-cryptography/
	https://django-cryptography.readthedocs.io/
"
SRC_URI="
	mirror://pypi/${PN:0:1}/${PN}/${MY_P}.tar.gz -> ${P}.tar.gz
"
S="${WORKDIR}/${MY_P}"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND="
    >=dev-python/django-2.2[${PYTHON_USEDEP}]
    <dev-python/django-4.1[${PYTHON_USEDEP}]
"
