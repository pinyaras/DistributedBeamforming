INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_ENERGYBEAMFORMING EnergyBeamforming)

FIND_PATH(
    ENERGYBEAMFORMING_INCLUDE_DIRS
    NAMES EnergyBeamforming/api.h
    HINTS $ENV{ENERGYBEAMFORMING_DIR}/include
        ${PC_ENERGYBEAMFORMING_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    ENERGYBEAMFORMING_LIBRARIES
    NAMES gnuradio-EnergyBeamforming
    HINTS $ENV{ENERGYBEAMFORMING_DIR}/lib
        ${PC_ENERGYBEAMFORMING_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(ENERGYBEAMFORMING DEFAULT_MSG ENERGYBEAMFORMING_LIBRARIES ENERGYBEAMFORMING_INCLUDE_DIRS)
MARK_AS_ADVANCED(ENERGYBEAMFORMING_LIBRARIES ENERGYBEAMFORMING_INCLUDE_DIRS)

