// Greater than one, goes to the left (Left speed is faster)
// Less than one, goes to the right (Right speed is faster)

void Robot::circle(double radius, double loops) {
    if (radius > 0) {
        this->setJointSpeeds(90, 90 + (67 * 10  / radius));
    } else { 
        radius = -radius;
        this->setJointSpeeds(90 + (67 * 10  / radius), 90);
    }
    
    this->driveDistance(3.23 * radius * loops);
}
