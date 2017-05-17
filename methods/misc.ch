// Greater than one, goes to the left (Left speed is faster)
// Less than one, goes to the right (Right speed is faster)

void Robot::circle(double radius, double angularVel, double loops) {
    double speedL = angularVel*M_PI*radius / 180;
    double speedR = angularVel*M_PI*(radius + 4) / 180;
    
    this->setJointSpeeds(speedL, speedR, Robot::inch);
    
    this->driveDistance(2 * M_PI * radius * loops);
}

void Robot::circleNB(double radius, double angularVel, double loops) {
    double speedL = angularVel*M_PI*radius / 180;
    double speedR = angularVel*M_PI*(radius + 4) / 180;
    
    this->setJointSpeeds(speedL, speedR, Robot::inch);
    
    this->driveDistanceNB(2 * M_PI * radius * loops);
}

