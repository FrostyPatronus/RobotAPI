#include "movement.ch"
#include "accelerometer.ch"

Robot::Robot (...) {
    this->robot = new CLinkbotI();

    va_list args;
    va_start(args, 3);
    
    if (va_count(args) == 1){
        // double speed = va_arg(args, double);
        //printf("__SPEED__: %lf", speed);
        this->radius = Robot::defaultR;
        this->trackwidth = Robot::defaultTW;
        this->setSpeed(3.1);
    }
    
    toString();
    va_end(args);
}

CLinkbotI * Robot::getRobot() {
    return this->robot;
}

void Robot::toString(){
    double voltage;
    (*this->robot).getBatteryVoltage(voltage);
    printf("\nInitialized robot!\n");
    printf("Radius: %.2lf\nTrackwidth: %.2lf\n", this->radius, this->trackwidth);
    printf("Battery: %lf\n", voltage);
}

void Robot::setSpeed(double speed) {
    (*this->robot).setSpeed(speed, this->radius);
}



