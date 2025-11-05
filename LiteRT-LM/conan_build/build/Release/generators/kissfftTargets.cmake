# Load the debug and release variables
file(GLOB DATA_FILES "${CMAKE_CURRENT_LIST_DIR}/kissfft-*-data.cmake")

foreach(f ${DATA_FILES})
    include(${f})
endforeach()

# Create the targets for all the components
foreach(_COMPONENT ${kissfft_COMPONENT_NAMES} )
    if(NOT TARGET ${_COMPONENT})
        add_library(${_COMPONENT} INTERFACE IMPORTED)
        message(${kissfft_MESSAGE_MODE} "Conan: Component target declared '${_COMPONENT}'")
    endif()
endforeach()

if(NOT TARGET kissfft::kissfft)
    add_library(kissfft::kissfft INTERFACE IMPORTED)
    message(${kissfft_MESSAGE_MODE} "Conan: Target declared 'kissfft::kissfft'")
endif()
if(NOT TARGET kissfft::kissfft-float)
    add_library(kissfft::kissfft-float INTERFACE IMPORTED)
    set_property(TARGET kissfft::kissfft-float PROPERTY INTERFACE_LINK_LIBRARIES kissfft::kissfft)
endif()
# Load the debug and release library finders
file(GLOB CONFIG_FILES "${CMAKE_CURRENT_LIST_DIR}/kissfft-Target-*.cmake")

foreach(f ${CONFIG_FILES})
    include(${f})
endforeach()