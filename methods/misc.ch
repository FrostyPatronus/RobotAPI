// Greater than one, goes to the left (Left speed is faster)
// Less than one, goes to the right (Right speed is faster)

void Robot::driveSpeedRatio(double numerator, double denominator, double coefficient, double distance) {
    this->robot->setJointSpeeds(numerator * coefficient, NaN, denominator * coefficient);
    this->driveDistance(distance);
    this->setSpeed(this->speed);
}
