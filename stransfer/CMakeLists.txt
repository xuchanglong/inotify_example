cmake_minimum_required(VERSION 3.8)
project(stransfer)

if (CMAKE_VERSION VERSION_LESS "3.1")
    if (CMAKE_C_COMPILER_ID STREQUAL "GNU")
        set (CMAKE_C_FLAGS "-std=gnu99 ${CMAKE_C_FLAGS}")
    endif ()
else ()
    set (CMAKE_C_STANDARD 99)
endif ()

set(SRC_FILES main.c log.h log.c config.h config.c def.h util.h util.c server.h server.c)
add_executable(stransfer ${SRC_FILES})

INSTALL(TARGETS stransfer
        RUNTIME DESTINATION bin
        )