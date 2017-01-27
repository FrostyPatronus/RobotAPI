#define R 1.75
#define TW 3.69

#include <linkbot.h>

class Robot {
    
    private: 
        double radius;
        double trackwidth;
        CLinkbotI * robot;
    
    public:
        static double defaultR;
        static double defaultTW;    
        static double defaultSpeed;
    
        Robot(...);
        void setSpeed(double);
        CLinkbotI * getRobot();
        void toString();

        // Movement
        void driveDistance(double);
        void driveDistanceNB(double);
        void turnLeft(...);
        void turnLeftNB(double);
        void turnRight(...);
        void turnRightNB(double);
        void holdJoints();
        void driveAngle(double);
        void driveAngleNB(double);
    
        // Custom Functions
        void onBump(void (*funcPtr)());
};

// Default values
double Robot::defaultR = NULL;
double Robot::defaultTW = NULL;

#include "./methods/main.ch"



