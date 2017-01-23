void Robot::driveDistance(double distance){
    (*this->robot).driveDistance(distance, this->radius);
}

void Robot::driveDistanceNB(double distance){
    (*this->robot).driveDistanceNB(distance, this->radius);
}

void Robot::turnLeft(...){
    va_list args;
    va_start(args, 1);
    
    if(va_count(args) == 1){
        double angle = va_arg(args, double);
        (*this->robot).turnLeft(angle, this->radius, this->trackwidth);
    } else {
        (*this->robot).turnLeft(90, this->radius, this->trackwidth);
    }
    
    va_end(args);
}

void Robot::turnLeftNB(double angle){
    (*this->robot).turnLeftNB(angle, this->radius, this->trackwidth);
}

void Robot::turnRight(...){
    va_list args;
    va_start(args, 1);
    
    if(va_count(args) == 1){
        double angle = va_arg(args, double);
        (*this->robot).turnRight(angle, this->radius, this->trackwidth);
    } else {
        (*this->robot).turnRight(90, this->radius, this->trackwidth);
    }
    
    va_end(args);
}

void Robot::turnRightNB(double angle){
    (*this->robot).turnRightNB(angle, this->radius, this->trackwidth);
}

void Robot::holdJoints(){
    (*this->robot).holdJoints();
}
