#include "robot.ch"

double degreesConv = 32.75;

Robot robot = Robot(5);

void circle(double radius, double angularVel, double loops) {
    double speedL = angularVel*M_PI*radius / 180;
    double speedR = angularVel*M_PI*(radius + 4) / 180;
    
    robot.setJointSpeeds(speedL, speedR, Robot::inch);
    
    robot.driveDistance(2 * M_PI * radius * loops);
}


circle(5, 40, 1);

