# Copyright (c) 2016-2018, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    ncnn
    VERSION
    20180314-p0
    URL
    "https://github.com/hunter-packages/ncnn/archive/20180314-p0.tar.gz"
    SHA1
    0682261afd501db54e47a081025e0345dfd77962
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(ncnn)
hunter_download(PACKAGE_NAME ncnn)
