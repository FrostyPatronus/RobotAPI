#include "movement.ch"
#include "accelerometer.ch"
#include "misc.ch"
#include "circles.ch"

Robot::Robot (...) {
    this->robot = new CLinkbotI();
    va_list args;
    va_start(args, 3);
    
    if(!Robot::defaultR) {
        double argument = va_arg(args, double);
        this->radius = argument;
	} else {
	    this->radius = Robot::defaultR;
	}
	
	if(!Robot::defaultTW) {
	    double argument = va_arg(args, double);
	    this->trackwidth = argument;
	} else {
	    this->trackwidth = Robot::defaultTW;
	}
	
	if(!Robot::defaultSpeed) {
	    double argument = va_arg(args, double);
	    this->setSpeed(argument);
	    this->speed = argument;

	} else {
	    this->speed = Robot::defaultSpeed;
	}    
    // Stops robots when program is stopped.
    // this->holdJointsAtExit();
    
    this->toString();
    va_end(args);
    
}

void Robot::connect(string_t serial) {
    this->robot->connectWithSerialID(serial);
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

void Robot::setLEDColor(string_t color) {
    this->robot->setLEDColor(color);
}

