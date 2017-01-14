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
        void right(double);

        
        CLinkbotI * getRobot();
        void toString();
};



#include "memberFunctions.ch"



