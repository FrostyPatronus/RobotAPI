//#include <linkbot.h>
//#include <stdarg.h>

#include "robot.ch"

Robot::defaultR = 1.75;
Robot::defaultTW = 3.69;
    
Robot robot1 = Robot(3);
Robot robot2 = Robot(3);

int main(){
    robot1.driveDistance(10);
}
