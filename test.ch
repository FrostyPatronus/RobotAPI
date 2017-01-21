#include "robot.ch"

Robot robot = Robot(R, TW, 5);
Robot robot2 = Robot(R, TW, 5);

void helper() {
    (*robot2.getRobot()).holdJoints();
    robot.driveDistance(5);
    
}

int main(){  
    robot2.turnLeft(90);
    robot.turnRight(90);

    robot2.driveDistanceNB(10);
    robot.onBump(helper);
    
}
