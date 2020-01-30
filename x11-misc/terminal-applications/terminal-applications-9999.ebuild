# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit eutils

DESCRIPTION="Workaround of the bug that prevents desktop files to launch a terminal with Terminal=true"
HOMEPAGE="https://github.com/AntoninRousset/terminal-applications"
LICENSE="GPL-3"

if [ "${PV}" = "9999" ]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/AntoninRousset/terminal-applications"
else
	KEYWORDS="~alpha amd64 arm arm64 ~ia64 ~mips ppc ppc64 ~sparc x86"
	SRC_URI=""
fi

SLOT="0"
IUSE=""

RDEPEND="
	>=sys-apps/openrc-0.5.0
"

DEPEND="${RDEPEND}"

src_install() {
	newinitd "${PN}-init.d" ${PN}
	newconfd "${PN}-conf.d" ${PN}
}

pkg_postinst() {
	elog "TERMCMD variable can be changed in /etc/conf.d/${PN}"
}

