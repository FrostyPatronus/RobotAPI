void Robot::driveDistance(double distance){
    CLinkbotI robot = *this->getRobot();
    robot.driveDistance(distance, this->radius);
}

void Robot::turnLeft(double angle=90){
    (*robot).turnLeft(angle, this->radius, this->trackwidth);
}

void Robot::turnRight(double angle=90){
    (*robot).turnRight(angle, this->radius, this->trackwidth);
}
