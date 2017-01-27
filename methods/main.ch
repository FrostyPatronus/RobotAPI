#include "movement.ch"
#include "accelerometer.ch"
#include "misc.ch"

Robot::Robot (...) {
    this->robot = new CLinkbotI();
    va_list args;
    va_start(args, 3);
    
    if (va_count(args) == 1){
        double speed = va_arg(args, double);
        
        // Checks if defaultR and defaultTW is defined
        if (!Robot::defaultR && !Robot::defaultTW){
            //Error message
            puts("Define defaultR and/or defaultTW");
            puts("You can do this this by putting these before initializing the robots:");
            puts("defaultR = [number]");
            puts("defaultTW = [number]");

            exit(-1);
        } else {
            this->radius = Robot::defaultR;
            this->trackwidth = Robot::defaultTW;
        }
        this->setSpeed(speed);
        
    } else if (va_count(args) == 2){
        double radius = va_arg(args, double);
        double trackwidth = va_arg(args, double);

        this->radius = radius;
        this->trackwidth = trackwidth;
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



