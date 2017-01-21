void Robot::driveDistance(double distance){
    CLinkbotI robot = *this->robot;
    robot.driveDistance(distance, this->radius);
}

void Robot::driveDistanceNB(double distance){
    (*this->robot).driveDistanceNB(distance, this->radius);
}

void Robot::turnLeft(double angle){
    (*this->robot).turnLeft(angle, this->radius, this->trackwidth);
}

void Robot::turnRight(double angle){
    (*this->robot).turnRight(angle, this->radius, this->trackwidth);
}

void Robot::holdJoints(){
    (*this->robot).holdJoints();
}
