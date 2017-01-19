#include "movement.ch"
#include "accelerometer.ch"

Robot::Robot (double radius, double trackwidth) {
    this->radius = radius;
    this->trackwidth = trackwidth;
        
    this->robot = new CLinkbotI();
    
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



