vcpkg_from_github(
        OUT_SOURCE_PATH SOURCE_PATH
        REPO AridTag/lib-asmkraken
        REF 5a3df5d9f30774c6f697e4e6284906b1c2224d09
        SHA512 e4951c449252b5b1ce547f2994a30be69db5eb7e8b629f183bdc4efb89a1f2d0589be477453ce3d43e3cfe3a972e5d75471e040193bb29a1d08bd12e31557b29
        HEAD_REF master
)

vcpkg_configure_cmake(
        SOURCE_PATH ${SOURCE_PATH}
        PREFER_NINJA
)
vcpkg_install_cmake()

file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/include)

file(INSTALL ${SOURCE_PATH}/LICENSE.md DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)