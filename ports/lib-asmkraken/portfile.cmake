vcpkg_from_github(
        OUT_SOURCE_PATH SOURCE_PATH
        REPO AridTag/lib-asmkraken
        REF 7116ecc71ca02f69125a5400e67c9d912b82e0e9
        SHA512 ff676ff7861f8921692d25ff5e20dfa07c519a0682567401261e1f284b818ffb1696df32b11e4bb5905d4ed294b8d8f962ff23661fb880f126d3e92c0c0bc475
        HEAD_REF master
)

vcpkg_configure_cmake(
        SOURCE_PATH ${SOURCE_PATH}
        PREFER_NINJA
)
vcpkg_install_cmake()

file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/include)

file(INSTALL ${SOURCE_PATH}/LICENSE.md DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)