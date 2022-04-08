set(CMAKE_SYSTEM_NAME Generic)                                             # “Generic” is used when cross-compiling
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)                          # Avoids linking during try_compile()
set(CMAKE_SYSTEM_PROCESSOR arm)                                            # Set this to the compiler’s target <arch>
set(TOOLKIT_DIR "/opt/iarsystems/bx${CMAKE_SYSTEM_PROCESSOR}/${CMAKE_SYSTEM_PROCESSOR}")
set(CMAKE_C_COMPILER    "${TOOLKIT_DIR}/bin/icc${CMAKE_SYSTEM_PROCESSOR}") # IAR C Compiler location
set(CMAKE_CXX_COMPILER  "${TOOLKIT_DIR}/bin/icc${CMAKE_SYSTEM_PROCESSOR}") # IAR C++ Compiler location
set(CMAKE_ASM_COMPILER "${TOOLKIT_DIR}/bin/iasm${CMAKE_SYSTEM_PROCESSOR}") # IAR Assembler location
set(IAR_IARCHIVE "${TOOLKIT_DIR}/bin/iarchive") 
set(IAR_IOBJMANIP "${TOOLKIT_DIR}/bin/iobjmanip") 
