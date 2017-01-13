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
        
        void forward(double);
        void left(double);
        
        CLinkbotI * getRobot();
        void toString();
};

int main () {
    Robot robot = Robot(RADIUS, TRACKWIDTH);
    
    robot.forward(10);
    
}



#include "memberFunctions.ch"



