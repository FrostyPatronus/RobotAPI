void Robot::driveDistance(double distance){
    CLinkbotI robot = *this->getRobot();
    robot.driveDistance(distance, this->radius);
}

void Robot::turnLeft(double angle){
    (*robot).turnLeft(angle, this->radius, this->trackwidth);
}


void Robot::turnRight(double angle){
    (*robot).turnRight(angle, this->radius, this->trackwidth);
}
