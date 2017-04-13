#define R 1.75
#define TW 3.69

#include <linkbot.h>

class Robot {
    
    private: 
        double radius;
        double trackwidth;
        double speed;
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
        void moveRight(double);
        void moveLeft(double);
        void move(double, double);
        void setJointSpeeds(double, double); 
        void driveCircle(double, double);
        void driveCircleNB(double, double);
        void driveConcentric(Robot*, double, double, double);
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
        void setLEDColor(string_t);

        // Custom Functions
        void onBump(void (*funcPtr)());
        void driveSpeedRatio(double, double, double, double);
};

double Robot::defaultR = NULL;
double Robot::defaultTW = NULL;
double Robot::defaultSpeed = NULL;

#include "./methods/main.ch"



