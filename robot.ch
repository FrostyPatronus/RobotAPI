#define RADIUS 1.75
#define TRACKWIDTH 3.69

#include <linkbot.h>

class Robot {
    private: 
        double radius;
        double trackwidth;
        CLinkbotI * robot;
    
    public:
        Robot(double, double);
        
        void driveDistance(double);
        void turnLeft(double);
        void turnRight(double);
    
        void onBump(void (*funcPtr)());

        CLinkbotI * getRobot();
        void toString();
};

#include "./methods/main.ch"



