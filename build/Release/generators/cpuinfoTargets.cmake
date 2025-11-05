# Load the debug and release variables
file(GLOB DATA_FILES "${CMAKE_CURRENT_LIST_DIR}/cpuinfo-*-data.cmake")

foreach(f ${DATA_FILES})
    include(${f})
endforeach()

# Create the targets for all the components
foreach(_COMPONENT ${cpuinfo_COMPONENT_NAMES} )
    if(NOT TARGET ${_COMPONENT})
        add_library(${_COMPONENT} INTERFACE IMPORTED)
        message(${cpuinfo_MESSAGE_MODE} "Conan: Component target declared '${_COMPONENT}'")
    endif()
endforeach()

if(NOT TARGET cpuinfo::cpuinfo)
    add_library(cpuinfo::cpuinfo INTERFACE IMPORTED)
    message(${cpuinfo_MESSAGE_MODE} "Conan: Target declared 'cpuinfo::cpuinfo'")
endif()
# Load the debug and release library finders
file(GLOB CONFIG_FILES "${CMAKE_CURRENT_LIST_DIR}/cpuinfo-Target-*.cmake")

foreach(f ${CONFIG_FILES})
    include(${f})
endforeach()