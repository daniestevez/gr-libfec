INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_LIBFEC libfec)

FIND_PATH(
    LIBFEC_INCLUDE_DIRS
    NAMES libfec/api.h
    HINTS $ENV{LIBFEC_DIR}/include
        ${PC_LIBFEC_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    LIBFEC_LIBRARIES
    NAMES gnuradio-libfec
    HINTS $ENV{LIBFEC_DIR}/lib
        ${PC_LIBFEC_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(LIBFEC DEFAULT_MSG LIBFEC_LIBRARIES LIBFEC_INCLUDE_DIRS)
MARK_AS_ADVANCED(LIBFEC_LIBRARIES LIBFEC_INCLUDE_DIRS)

