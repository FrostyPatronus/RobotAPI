#include <stdarg.h>
#include "robot.ch"

Robot robot = Robot(R, TW, 5);
Robot robot2 = Robot(R, TW, 5);

void helper() {
    robot2.holdJoints();
    robot.driveDistance(10);
    
}

int main(){  
    robot2.driveAngleNB(180);
    robot.driveAngle(180);
}
