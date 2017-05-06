void Robot::moveJointNB(int joint, double angle) {
    this->robot->moveJointNB(joint, angle);
}

void Robot::moveJoint(int joint, double angle) {
    this->robot->moveJoint(joint, angle);
}


void Robot::moveRight(double angle) {
    this->robot->move(0, NaN, -angle);
}

void Robot::moveLeft(double angle) {
    this->robot->move(angle, NaN, 0);
}

void Robot::move(double angle1, double angle2) {
    this->robot->move(angle1, NaN, -angle2);
}

void Robot::setJointSpeeds(double speed1, double speed2) {
    robot->setJointSpeeds(speed1, NaN, speed2);
}

void Robot::setJointSpeed(double joint, double speed) {
    robot->setJointSpeed(joint, speed);
}

void Robot::driveForeverNB() {
    this->robot->driveForeverNB();
}

// Moves joint to an ABSOLUTE angle
void Robot::moveTo(double angle1, double angle2) {
    this->robot->moveTo(angle1, NaN, angle2);
}

void Robot::holdJointsAtExit() {
    this->robot->holdJointsAtExit();
}

void Robot::driveDistance(double distance){
    this->robot->driveDistance(distance, this->radius);
}

void Robot::driveDistanceNB(double distance){
    this->robot->driveDistanceNB(distance, this->radius);
}

void Robot::turnLeft(...){
    va_list args;
    va_start(args, 1);
    
    if(va_count(args) == 1){
        double angle = va_arg(args, double);
        this->robot->turnLeft(angle, this->radius, this->trackwidth);
    } else {
        this->robot->turnLeft(90, this->radius, this->trackwidth);
    }
    
    va_end(args);
}

void Robot::turnLeftNB(...){
    va_list args;
    va_start(args, 1);
    
    if(va_count(args) == 1){
        double angle = va_arg(args, double);
        this->robot->turnLeftNB(angle, this->radius, this->trackwidth);
    } else {
        this->robot->turnLeftNB(90, this->radius, this->trackwidth);
    }
    
    va_end(args);
}

void Robot::turnRight(...){
    va_list args;
    va_start(args, 1);
    
    if(va_count(args) == 1){
        double angle = va_arg(args, double);
        this->robot->turnRight(angle, this->radius, this->trackwidth);
    } else {
        this->robot->turnRight(90, this->radius, this->trackwidth);
    }
    
    va_end(args);
}

void Robot::turnRightNB(...){
    va_list args;
    va_start(args, 1);
    
    if(va_count(args) == 1){
        double angle = va_arg(args, double);
        this->robot->turnRightNB(angle, this->radius, this->trackwidth);
    } else {
        this->robot->turnRightNB(90, this->radius, this->trackwidth);
    }
    
    va_end(args);
}

void Robot::holdJoints(){
    this->robot->holdJoints();
}

void Robot::driveAngle(double angle){
    this->robot->driveAngle(angle);
}

void Robot::driveAngleNB(double angle){
    this->robot->driveAngleNB(angle);
}
