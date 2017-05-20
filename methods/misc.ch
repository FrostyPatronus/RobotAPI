// Greater than one, goes to the left (Left speed is faster)
// Less than one, goes to the right (Right speed is faster)

void Robot::circle(double radius, double angularVel, double loops) {
    double speedL;
    double speedR;
    if (radius > 0) {
        radius = radius - Robot::defaultTW / 2;
        
        speedL = angularVel*M_PI*radius / 180;
        speedR = angularVel*M_PI*(radius + 4) / 180;

        this->setJointSpeeds(speedL, speedR, Robot::inch);
    } else {
        radius = -radius;
        radius = radius - Robot::defaultTW / 2;

        speedR = angularVel*M_PI*radius / 180;
        speedL = angularVel*M_PI*(radius + 4) / 180;
    
        this->setJointSpeeds(speedL, speedR, Robot::inch);
    }
    
    printf("%lf\n", 2 * M_PI * radius * loops);
    this->driveDistance(2 * M_PI * radius * loops);
    this->setSpeed(this->speed, Robot::inch);
    
}

// --------------------------- NB ---------------------------------- // 
void Robot::circleNB(double radius, double angularVel, double loops) {
    double speedL;
    double speedR;
    if (radius > 0) {
        radius = radius - Robot::defaultTW / 2;
        
        speedL = angularVel*M_PI*radius / 180;
        speedR = angularVel*M_PI*(radius + 4) / 180;

        this->setJointSpeeds(speedL, speedR, Robot::inch);
    } else {
        radius = -radius;
        radius = radius - Robot::defaultTW / 2;

        speedR = angularVel*M_PI*radius / 180;
        speedL = angularVel*M_PI*(radius + 4) / 180;
    
        this->setJointSpeeds(speedL, speedR, Robot::inch);
    }
    
    printf("%lf\n", 2 * M_PI * radius * loops);
    this->driveDistanceNB(2 * M_PI * radius * loops);
    sleep(360 / angularVel * loops);
    this->setSpeed(this->speed, Robot::inch);
}

