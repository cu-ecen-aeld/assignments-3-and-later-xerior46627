#include <stdio.h>
#include <stdlib.h>
#include <syslog.h>
#include <unistd.h>
#include <string.h>
#include <errno.h>


#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

int main(int argc, char *argv[]) {
    openlog("writer", LOG_PID | LOG_CONS, LOG_USER);

    if (argc != 3) {
        syslog(LOG_ERR, "either file path or the string were not specified");
        return 1;
    }

    int fd;
    fd = open (argv[1], O_WRONLY | O_APPEND | O_CREAT, 777);
    if(fd == -1) {
        syslog(LOG_ERR, "The file dosen't exist or can't be created");
        return 1;
    }

    ssize_t nr = write (fd, argv[2], strlen (argv[2]));
    if (nr == -1) {
        syslog(LOG_ERR, "fail to write file");
        return 1;
    } else {
        syslog(LOG_DEBUG, "Write %s to %s", argv[2], argv[1]);
    }    
}