void Robot::forward(double distance){
    CLinkbotI robot = *this->getRobot();
    robot.driveDistance(distance, this->radius);
}

void Robot::left(double angle){
    (*robot).turnLeft(angle, this->radius, this->trackwidth);
}


void Robot::right(double angle){
    (*robot).turnRight(angle, this->radius, this->trackwidth);
}
