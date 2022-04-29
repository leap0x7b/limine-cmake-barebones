set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR x86_64)

set(CMAKE_C_COMPILER clang)
set(CMAKE_C_COMPILER_TARGET x86_64-unknown-elf)
set(CMAKE_C_FLAGS "-ffreestanding -mno-red-zone")
set(CMAKE_CXX_COMPILER clang++)
set(CMAKE_CXX_COMPILER_TARGET x86_64-unknown-elf)
set(CMAKE_CXX_FLAGS ${CMAKE_C_FLAGS})
set(CMAKE_C_LINK_EXECUTABLE "ld.lld <OBJECTS> -o <TARGET> <CMAKE_C_LINK_FLAGS> <LINK_FLAGS> <LINK_LIBRARIES>")
set(CMAKE_CXX_LINK_EXECUTABLE ${CMAKE_C_LINK_EXECUTABLE})
set(CMAKE_TRY_COMPILE_TARGET_TYPE "STATIC_LIBRARY")
set(CMAKE_ASM_NASM_COMPILER "nasm")
set(CMAKE_ASM_NASM_SOURCE_FILE_EXTENSIONS "asm;nasm;S;s")

set(CMAKE_LINKER ld.lld CACHE INTERNAL STRING)
set(CMAKE_OBJCOPY llvm-objcopy CACHE INTERNAL STRING)
set(CMAKE_AR llvm-ar CACHE INTERNAL STRING)
set(CMAKE_SIZE_UTIL llvm-size CACHE INTERNAL STRING)