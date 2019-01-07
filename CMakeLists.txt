
project(code_gen)

set(out a.h a.cxx)
add_custom_command(OUTPUT ${out}
    COMMAND ${CMAKE_CURRENT_SOURCE_DIR}/gen.sh
    DEPENDS gen.sh)
add_custom_target(gen_a
    DEPENDS ${out})


include_directories(${CMAKE_CURRENT_BINARY_DIR})
add_executable(demo
    main.cxx
    a.cxx)

add_dependencies(demo gen_a)
