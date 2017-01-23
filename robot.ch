#define R 1.75
#define TW 3.69

#include <linkbot.h>

class Robot {
    private: 
        double radius;
        double trackwidth;
        CLinkbotI * robot;
    
    public:
        Robot(double, double, double);
        void setSpeed(double);
        
        void driveDistance(double);
        void driveDistanceNB(double);

        void turnLeft(...);
        void turnLeftNB(double);
        void turnRight(...);
        void turnRightNB(double);
    
        void holdJoints();
    
        // Custom Functions
        void onBump(void (*funcPtr)());
        
        CLinkbotI * getRobot();
        void toString();
};

#include "./methods/main.ch"



