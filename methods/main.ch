#include "movement.ch"
#include "accelerometer.ch"
#include "misc.ch"

Robot::Robot (...) {
    this->robot = new CLinkbotI();
    va_list args;
    va_start(args, 3);
    
    // Dyanamic argument counts
    int i;
    for (i = 0; i < 3; i++){
        switch(i) {
            case 0:
                if(!Robot::defaultR) {
                    double argument = va_arg(args, double);
                    this->radius = argument;
                } else {
                    this->radius = Robot::defaultR;
                }
                break;
                
            case 1:
                if(!Robot::defaultTW) {
                    double argument = va_arg(args, double);
                    this->trackwidth = argument;
                } else {
                    this->trackwidth = Robot::defaultTW;
                }
                break;
                
            case 2:
                if(!Robot::defaultSpeed) {
                    double argument = va_arg(args, double);
                    this->setSpeed(argument);
                } else {
                    this->radius = Robot::defaultSpeed;
                }
                break;
        }
    }
    
    // Stops robots when program is stopped.
    // this->holdJointsAtExit();
    
    this->toString();
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



