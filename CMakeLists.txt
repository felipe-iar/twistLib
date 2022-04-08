cmake_minimum_required(VERSION 3.23)
project(myLib LANGUAGES C)

add_library(myLib 
  foo.c
  foo2.c
  bar.c )

add_custom_command(TARGET myLib
  PRE_LINK
  COMMAND ${IAR_IOBJMANIP} --rename-symbol foo=foo2
                           ${CMAKE_CURRENT_BINARY_DIR}/CMakeFiles/myLib.dir/foo2.c.o 
                           ${CMAKE_CURRENT_BINARY_DIR}/CMakeFiles/myLib.dir/foo2.c.o )

add_executable(myExec test.c)

target_compile_options(myExec PRIVATE -e)

target_link_libraries(myExec LINK_PUBLIC myLib)
