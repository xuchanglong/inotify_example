cmake_minimum_required(VERSION 3.8)
project(ctransfer)

set(SRC_FILES main.c config.h config.c def.h log.h log.c util.h util.c client.h client.c notify.h notify.c)
add_executable(ctransfer ${SRC_FILES})
target_link_libraries(ctransfer pthread)

install(TARGETS ctransfer
        RUNTIME DESTINATION bin
        )