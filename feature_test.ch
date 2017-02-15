#include <stdarg.h>
#include <linkbot.h>

void test(CLinkbotI robot) {
    robot.driveDistance(10, 1.75);
}

int main() {
    CLinkbotI robot;
    test(robot);
}
