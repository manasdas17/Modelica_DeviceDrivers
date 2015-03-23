/** Test for MDDUDPSocket.
 *
 * @file
 * @author      Bernhard Thiele <bernhard.thiele@dlr.de>
 * @since       2012-05-30
 * @copyright Modelica License 2
 * @test Test for MDDUDPSocket.h.
*/

#include <stdio.h>
#include "../../Include/MDDUDPSocket.h"
#include "../../src/include/util.h" /* Sleep(..) */

int main(void) {
    void * sendSocket;
    void * recSocket;
    char sendMessage[80];
    const char *recMessage;
    int i;
    int recBytes;

    recSocket = MDD_udpConstructor(10002, 80);
    if (recSocket == 0) {
        perror("recSocket == NULL\n");
        exit(1);
    }

    sendSocket = MDD_udpConstructor(0,0);
    if (sendSocket == 0) {
        MDD_udpDestructor(recSocket);
        perror("sendSocket == NULL\n");
        exit(1);
    }

    for (i=0; i < 10; i++) {
        sprintf(sendMessage, "Current i is %i", i);
        //MDD_udpSend(sendSocket, "127.0.0.1", 10002, sendMessage, strlen(sendMessage));
        MDD_udpSend(sendSocket, "127.0.0.1", 10002, sendMessage, 80);
        //Sleep(1);
        recBytes = MDD_udpGetReceivedBytes(recSocket);
        recMessage = MDD_udpRead(recSocket);
        printf("Received %d bytes: %s\n", recBytes, recMessage);
    }

    MDD_udpDestructor(recSocket);
    MDD_udpDestructor(sendSocket);

    return 0;
}
