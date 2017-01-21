#include "movement.ch"
#include "accelerometer.ch"

Robot::Robot (double radius, double trackwidth, double speed) {
    this->radius = radius;
    this->trackwidth = trackwidth;
        
    this->robot = new CLinkbotI();
    
    this->setSpeed(speed);
    
    toString();
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



