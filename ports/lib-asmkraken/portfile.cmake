vcpkg_from_github(
        OUT_SOURCE_PATH SOURCE_PATH
        REPO AridTag/lib-asmkraken
        REF 92938d7ad8587ce238e84e2dee0c02de4f14c81b
        SHA512 9ebbde5eedcfc135bd1b15d7547df7d183e12467109172102e4b7cbde949bd0adb8ae21983a2ca9f3c77fe7e4ad93f09a9ba80897deb56c1766520d4e368d8f6
        HEAD_REF master
)

vcpkg_configure_cmake(
        SOURCE_PATH ${SOURCE_PATH}
        PREFER_NINJA
)
vcpkg_install_cmake()

file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/include)

file(INSTALL ${SOURCE_PATH}/LICENSE.md DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)