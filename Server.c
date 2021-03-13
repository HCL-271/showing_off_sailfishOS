#include <sys/socket.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <sys/types.h>
#include <time.h>

int main(int argc, char *argv[]) {
        int fd;
        // fd = open ("/home/hcl/Folder/a", O_WRONLY);
        int n = 0;
        char recvBuff[1024];
        int listenfd = 0, connfd = 0;
        struct sockaddr_in serv_addr;
        char sendBuff[1025];
        time_t ticks;
                   // printf("loop");

        listenfd = socket(AF_INET, SOCK_STREAM, 0);

        memset(&serv_addr, '0', sizeof(serv_addr));

        memset(sendBuff, '0', sizeof(sendBuff));

        serv_addr.sin_family = AF_INET;

        serv_addr.sin_addr.s_addr = htonl(INADDR_ANY);

        serv_addr.sin_port = htons(5000);

        bind(listenfd, (struct sockaddr*)&serv_addr, sizeof(serv_addr));
        write(fd, "kakogo cherta", 14);
        listen(listenfd, 10);

        char Buff[1025];

        while(1) {
                 connfd = accept(listenfd, (struct sockaddr*)NULL, NULL);

                 snprintf(sendBuff, sizeof(sendBuff), "Message");

                 write(connfd, sendBuff , strlen(sendBuff));

                 read(connfd, Buff, 1025);
                 write(fd, Buff, 1025);
//snprintf(Buff, sizeof(Buff), "MS2");
                 write(fd, "Duff in", 7);
                                                                                   // write(connfd, Buff , strlen(Buff));

                                          // if (Buff == ")
                 close(connfd);

                 break;
                                            //sleep(1);


                 }

}
