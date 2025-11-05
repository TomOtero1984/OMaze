# Load the debug and release variables
file(GLOB DATA_FILES "${CMAKE_CURRENT_LIST_DIR}/fxdiv-*-data.cmake")

foreach(f ${DATA_FILES})
    include(${f})
endforeach()

# Create the targets for all the components
foreach(_COMPONENT ${fxdiv_COMPONENT_NAMES} )
    if(NOT TARGET ${_COMPONENT})
        add_library(${_COMPONENT} INTERFACE IMPORTED)
        message(${fxdiv_MESSAGE_MODE} "Conan: Component target declared '${_COMPONENT}'")
    endif()
endforeach()

if(NOT TARGET fxdiv::fxdiv)
    add_library(fxdiv::fxdiv INTERFACE IMPORTED)
    message(${fxdiv_MESSAGE_MODE} "Conan: Target declared 'fxdiv::fxdiv'")
endif()
# Load the debug and release library finders
file(GLOB CONFIG_FILES "${CMAKE_CURRENT_LIST_DIR}/fxdiv-Target-*.cmake")

foreach(f ${CONFIG_FILES})
    include(${f})
endforeach()