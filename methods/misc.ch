// Greater than one, goes to the left (Left speed is faster)
// Less than one, goes to the right (Right speed is faster)

void Robot::circle(double radius, double loops) {
    if (radius > 0) {
        this->setJointSpeeds(90, (90 + 67 * 10  / radius), Robot::degree);
    } else { 
        this->setJointSpeeds(90 + (67 * 10  / (-radius)), 90, Robot::degree);
    }
    
    
    this->driveDistance(3.2 * abs(radius) * loops);
}
