vcpkg_from_github(
        OUT_SOURCE_PATH SOURCE_PATH
        REPO AridTag/lib-asmkraken
        REF 67159d15947c547728745db6b44fae73f461b00a
        SHA512 2a50aebad61eaa02cd6d91386857698e0f5a8c7e21c6f37043e536b0288106e6b6c25471da805c74eb8226c1406a3c27e220e2610993fb5ae6bda6200e2ea837
        HEAD_REF master
)

vcpkg_configure_cmake(
        SOURCE_PATH ${SOURCE_PATH}
        PREFER_NINJA
)
vcpkg_install_cmake()

file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/include)

file(INSTALL ${SOURCE_PATH}/LICENSE.md DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)