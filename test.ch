#include "robot.ch"

int main(){
    /*
    CLinkbotI robot1;
    CLinkbotI robot2;
    
    double y1, y2;
    
    robot1.getAccelerometerData(NULL, y1, NULL);
    robot1.getAccelerometerData(NULL, y2, NULL);
    
    robot2.driveDistanceNB(100, RADIUS);
    
    while(abs(y2 - 0) < 0.03) {
        robot1.getAccelerometerData(NULL, y2, NULL);
    }
    
    robot2.holdJoints();
    robot1.driveDistance(10, RADIUS);
    */
    
    double radius = 3.75, track = 321;
    
    Robot robot = Robot(RADIUS, TRACKWIDTH);
    robot.turnLeft(90);
}

