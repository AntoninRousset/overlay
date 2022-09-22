# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

PHP_EXT_NAME="pdlib"
USE_PHP="php7-3 php7-4 php8-0 php8-1"
DOCS=( README.md )

inherit php-ext-source-r3

DESCRIPTION="PHP extension for Dlib"
HOMEPAGE="https://github.com/goodspb/${PN}"
SRC_URI="https://github.com/goodspb/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~arm arm64 ~x86"

RDEPEND="
	sci-libs/dlib[X]
"
