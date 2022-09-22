# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..10} )

inherit distutils-r1

MY_P="${P}"
DESCRIPTION="Sane and flexible OpenAPI 3 schema generation for Django REST framework"
HOMEPAGE="
	https://pypi.org/project/${PN}/
	https://github.com/tfranzel/drf-spectacular/
	https://drf-spectacular.readthedocs.io/
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
	>=dev-python/djangorestframework-3.10[${PYTHON_USEDEP}]
	>=dev-python/uritemplate-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/pyyaml-5.1[${PYTHON_USEDEP}]
	>=dev-python/jsonschema-2.6.0[${PYTHON_USEDEP}]
	>=dev-python/inflection-0.3.1[${PYTHON_USEDEP}]
"
