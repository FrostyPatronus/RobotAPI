#include "robot.ch"

Robot robot = Robot(RADIUS, TRACKWIDTH);
Robot robot2 = Robot(RADIUS, TRACKWIDTH);

void helper() {
    robot.turnLeft(90);
}

int main(){  
    
    robot2.turnLeft();
    robot.turnLeft();
    
    (*robot2.getRobot()).setSpeed(100, RADIUS);
    (*robot2.getRobot()).driveDistanceNB(10, RADIUS);
    
    robot.onBump(helper);
    
}
