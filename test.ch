#include "robot.ch"

Robot robot = Robot(R, TW, 5);
Robot robot2 = Robot(R, TW, 5);

int main(){  
    robot2.driveDistanceNB(10);
    robot2.holdJoints();
}
