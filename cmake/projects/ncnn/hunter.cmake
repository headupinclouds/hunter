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
    20180314-p1
    URL
    "https://github.com/hunter-packages/ncnn/archive/20180314-p1.tar.gz"
    SHA1
    7d39886f172694c07fcae28380ac7fa150f8a820
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(ncnn)
hunter_download(PACKAGE_NAME ncnn)
