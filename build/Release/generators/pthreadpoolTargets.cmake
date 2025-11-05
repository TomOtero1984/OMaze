# Load the debug and release variables
file(GLOB DATA_FILES "${CMAKE_CURRENT_LIST_DIR}/pthreadpool-*-data.cmake")

foreach(f ${DATA_FILES})
    include(${f})
endforeach()

# Create the targets for all the components
foreach(_COMPONENT ${pthreadpool_COMPONENT_NAMES} )
    if(NOT TARGET ${_COMPONENT})
        add_library(${_COMPONENT} INTERFACE IMPORTED)
        message(${pthreadpool_MESSAGE_MODE} "Conan: Component target declared '${_COMPONENT}'")
    endif()
endforeach()

if(NOT TARGET pthreadpool::pthreadpool)
    add_library(pthreadpool::pthreadpool INTERFACE IMPORTED)
    message(${pthreadpool_MESSAGE_MODE} "Conan: Target declared 'pthreadpool::pthreadpool'")
endif()
# Load the debug and release library finders
file(GLOB CONFIG_FILES "${CMAKE_CURRENT_LIST_DIR}/pthreadpool-Target-*.cmake")

foreach(f ${CONFIG_FILES})
    include(${f})
endforeach()