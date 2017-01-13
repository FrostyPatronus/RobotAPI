#include "movement.ch"

Robot::Robot (double radius, double trackwidth) {
    this->radius = radius;
    this->trackwidth = trackwidth;
        
    this->robot = new CLinkbotI();
    
    toString();
}

CLinkbotI * Robot::getRobot(){
    return this->robot;
}

void Robot::toString(){
    printf("Initialized robot!\n");
    printf("Radius: %.2lf\nTrackwidth: %.2lf\n", this->radius, this->trackwidth);
}



