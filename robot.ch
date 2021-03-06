#define R 1.75
#define TW 3.69

#include <linkbot.h>

class Robot {
    
    private: 
        double radius;
        double trackwidth;
        double speed;
        //CLinkbotI * robot;
    
    public:
        static double defaultR; // Default Radius
        static double defaultTW; // Default Trackwidth
        static double defaultSpeed; // Default Speed
    
        static double degreeConv;
        static string_t inch;
        static string_t degree;
    
        Robot(...);
        void setSpeed(double, string_t);
        CLinkbotI * robot;
        //CLinkbotI * getRobot();
        void toString();
        void connect(string_t);

        // Movement
        void moveRight(double);
        void moveLeft(double);
        void moveI(double, double);
        void moveINB(double, double);
        void moveD(double, double);
        void moveDNB(double, double);
        void setJointSpeeds(double, double, string_t); 
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
        void moveJoint(int, double);
        void moveJointNB(int, double);
        void setJointSpeed(double ,double);
        
        // Custom Functions
        void onBump(void (*funcPtr)());
        void circle(double, double, double);
        void circleNB(double, double, double);

};

double Robot::defaultR = 1.75;
double Robot::defaultTW = 3.75;

string_t Robot::degree = "DEGREE";
string_t Robot::inch = "INCH";
double Robot::degreeConv = 32.727272;

double Robot::defaultSpeed = 4;

#include "./methods/main.ch"



