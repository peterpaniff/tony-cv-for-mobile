
##############################################

configure_file(platform.h.in ${CMAKE_CURRENT_BINARY_DIR}/platform.h)

include_directories(${CMAKE_CURRENT_SOURCE_DIR})
include_directories(${CMAKE_CURRENT_BINARY_DIR})

set(tiny_cv_SRCS
    mat_pixel_resize.cpp
    allocator.cpp
    cpu.cpp
    opencv.cpp
)
add_library(tiny_cv SHARED ${tiny_cv_SRCS})

if(TINY_CV_OPENMP AND OpenMP_CXX_FOUND)
    if(TINY_CV_CMAKE_VERBOSE)
        message("Building with OpenMP")
    endif()
    target_link_libraries(tiny_cv PUBLIC OpenMP::OpenMP_CXX)
endif()

if(COVERAGE)
    target_compile_options(tiny_cv PRIVATE --coverage)
endif()

install(TARGETS tiny_cv ARCHIVE DESTINATION lib LIBRARY DESTINATION lib)
install(FILES
    cpu.h
    mat.h
    allocator.h
    opencv.h
    ${CMAKE_CURRENT_BINARY_DIR}/platform.h
    DESTINATION include
)
