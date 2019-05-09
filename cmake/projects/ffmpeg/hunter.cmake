# Copyright (c) 2017-2019 Alexandre Pretyman
# Copyright (c) 2019 David Hirvonen
# All rights reserved.

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_configuration_types)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    ffmpeg
    VERSION
    "4.1-pkgconfig-p0"
    URL
    "http://ffmpeg.org/releases/ffmpeg-4.1.tar.bz2"
    SHA1
    dbbecc574c0a57687271165a618353d4ddbd8cfa
)

hunter_configuration_types(ffmpeg CONFIGURATION_TYPES Release)
hunter_pick_scheme(DEFAULT url_sha1_ffmpeg)

hunter_cmake_args(
    ffmpeg
    CMAKE_ARGS
    DEPENDS_ON_PACKAGES=x264
    PKGCONFIG_EXPORT_TARGETS=libavformat;libavcodec;libavutil;libswscale;libswresample;libavfilter;libavdevice;libpostproc
)

hunter_cacheable(ffmpeg)

# https://docs.hunter.sh/en/latest/reference/user-modules/hunter_download.html#hunter-download
hunter_download(
    PACKAGE_NAME ffmpeg
    PACKAGE_INTERNAL_DEPS_ID "8"
    PACKAGE_UNRELOCATABLE_TEXT_FILES
    "lib/pkgconfig/libavcodec.pc"
    "lib/pkgconfig/libavfilter.pc"
    "lib/pkgconfig/libavformat.pc"
    "lib/pkgconfig/libavutil.pc"
    "lib/pkgconfig/libswresample.pc"
    "lib/pkgconfig/libswscale.pc"
    "lib/pkgconfig/libavdevice.pc"
    "lib/pkgconfig/libpostproc.pc"
)
