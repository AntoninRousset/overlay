# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit meson

DESCRIPTION="A fast image processing library with low memory needs"
HOMEPAGE="
	https://libvips.github.io/libvips/
"
SRC_URI="
	https://github.com/${PN}/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz
"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE="
	exif fftw fits graphicsmagick heif imagequant imagemagick +introspection gsf
	jpeg jpegxl lcms matio openexr orc pango pdf png svg tiff webp zlib
"

RDEPEND="
	dev-libs/expat
	>=dev-libs/glib-2.40
	exif? ( >=media-libs/libexif-0.6 )
	fftw? ( sci-libs/fftw:3.0= )
	fits? ( sci-libs/cfitsio )
	gsf? ( >=gnome-extra/libgsf-1.14.26 )
	heif? ( >=media-libs/libheif-0.4.11 )
	imagemagick? (
		graphicsmagick? ( media-gfx/graphicsmagick )
		!graphicsmagick? ( >=media-gfx/imagemagick-7 )
	)
	imagequant? ( media-gfx/libimagequant )
	jpeg? ( virtual/jpeg:0= )
	jpegxl? ( >=media-libs/libjxl-0.7 )
	lcms? ( media-libs/lcms:2= )
	matio? ( sci-libs/matio )
	openexr? ( >=media-libs/openexr-1.2.2 )
	orc? ( >=dev-lang/orc-0.4.11 )
	pango? (
		x11-libs/cairo
		>=x11-libs/pango-1.32.6
	)
	pdf? ( >=app-text/poppler-0.16.0 )
	png? ( >=media-libs/libpng-1.2.9:0= )
	svg? ( >=gnome-base/librsvg-2.40.3 )
	tiff? (
		>=media-libs/tiff-4[jpeg,zlib]
		<media-libs/tiff-5
	)
	webp? ( >=media-libs/libwebp-0.6:0= )
	zlib? ( >=sys-libs/zlib-0.4:0= )
"
REQUIRED_USE="svg? ( zlib )"

src_configure() {
	local emesonargs=(
		$(meson_use introspection)
	)

	emesonargs+=(
		$(meson_feature exif)
		$(meson_feature fftw)
		$(meson_feature fits cfitsio)
		$(meson_feature gsf)
		$(meson_feature heif)
		$(meson_feature imagemagick magick)
		$(meson_feature imagequant)
		$(meson_feature jpeg)
		$(meson_feature jpegxl jpeg-xl)
		$(meson_feature lcms)
		$(meson_feature matio)
		$(meson_feature openexr)
		$(meson_feature orc)
		$(meson_feature pango pangocairo)
		$(meson_feature png)
		$(meson_feature pdf poppler)
		$(meson_feature svg rsvg)
		$(meson_feature tiff)
		$(meson_feature webp)
		$(meson_feature zlib)
	)

	 meson_src_configure
}
