FIND_PATH(GMOCK_INCLUDE_DIR gmock/gmock.h)

FIND_LIBRARY(GMOCK_LIBRARY NAMES gmock
             DOC "The Google Gmock Library"
             )

MARK_AS_ADVANCED(GMOCK_INCLUDE_DIR GMOCK_LIBRARY)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(GMOCK DEFAULT_MSG GMOCK_LIBRARY GMOCK_INCLUDE_DIR)

IF(GMOCK_FOUND)
    SET(GMOCK_INCLUDE_DIRS ${GMOCK_INCLUDE_DIR})
    SET(GMOCK_LIBRARIES    ${GMOCK_LIBRARY})
ENDIF()