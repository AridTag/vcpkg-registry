vcpkg_from_github(
        OUT_SOURCE_PATH SOURCE_PATH
        REPO AridTag/lib-asmkraken
        REF a55dbe2
        SHA512 a0650348cb37040bae601d1a1f45c1610abe3c0bc029a55e1e1fee37700e70c0e3e8fbc2d55f914ffaa50322bd1d08e15393a83a34df2bfe4ed962b497640126
        HEAD_REF master
)

vcpkg_configure_cmake(
        SOURCE_PATH ${SOURCE_PATH}
        PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()
file(INSTALL ${SOURCE_PATH}/LICENSE.md DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)