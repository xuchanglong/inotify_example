#ifndef STRANSFER_DEF_H
#define STRANSFER_DEF_H
#include <stdio.h>

#define BUFFER_SIZE 1024 * 1024
#define BACKLOG 64
#define CLIENT_MAX 1024
#define CIPHER1 "@mtt@start"
#define CIPHER2 "@mtt@transferring"
#define CIPHER3 "@mtt@end"
#define CIPHER4 "@mtt@heartbeat"

typedef struct st_file_info {
    int is_login;
    long remain_size;
    FILE *fp;
} file_info;

typedef struct st_conf {
    char host[32];
    int port;
    char key[128];
    char log[1024];
} conf;

#endif //STRANSFER_DEF_H
