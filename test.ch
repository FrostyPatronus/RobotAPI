#include "robot.ch"

double degreesConv = 32.75;

Robot robotO = Robot(5);
Robot robotI = Robot(5);

//Robot robotO = Robot(5);

/*void circle(double radius, double angularVel, double loops) {
    double speedL = angularVel*M_PI*radius / 180;
    double speedR = angularVel*M_PI*(radius + 4) / 180;
    
    robot.setJointSpeeds(speedL, speedR, Robot::inch);
    
    robot.driveDistance(2 * M_PI * radius * loops);
}*/


robotO.circle(-7, 20, 0.9);
// robotI.circle(-1.5, 20, 0.9);
