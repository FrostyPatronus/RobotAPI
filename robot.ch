#define R 1.75
#define TW 3.69

#include <linkbot.h>

class Robot {
    
    private: 
        double radius;
        double trackwidth;
        CLinkbotI * robot;
    
    public:
        static double defaultR; // Default Radius
        static double defaultTW; // Default Trackwidth
        static double defaultSpeed; // Default Speed
    
        Robot(...);
        void setSpeed(double);
        CLinkbotI * getRobot();
        void toString();
        void connect(string_t);

        // Movement
        void setJointSpeeds(double, double); 
        void driveCircle(double, double);
        void driveCircleNB(double, double);
        void driveForeverNB();
        void moveTo(double ,double);
        void holdJointsAtExit();
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

double Robot::defaultR = NULL;
double Robot::defaultTW = NULL;
double Robot::defaultSpeed = NULL;

#include "./methods/main.ch"



