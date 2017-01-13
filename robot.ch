#define RADIUS 1.75
#define TRACKWIDTH 3.69

#include <linkbot.h>

CLinkbotI robot;

class Robot {
    private: 
        double radius;
        double trackwidth;
    
    public:
        Robot(double, double);
        
        void forward(double);
        
        void toString();
};

void Robot::toString(){
    printf("Initialized robot!");
    printf("Radius: %.2lf\nTrackwidth: %.2lf\n", radius, trackwidth);
}

void Robot::forward(double distance){
    robot.driveDistance(distance, radius);
}


Robot::Robot (double radius, double trackwidth) {
    this->radius = radius;
    this->trackwidth = trackwidth;
    
    toString();
    
}



