#include <stdarg.h>
#include "robot.ch"

double Robot::defaultR = R;
double Robot::defaultTW = TW;

Robot robot = Robot(1.1);
Robot robot2 = Robot(1.1);

void helper() {
    robot2.holdJoints();
    robot.driveDistance(10);
    
}

int main(){  
    robot2.driveAngleNB(180);
    robot.driveAngle(180);
}
