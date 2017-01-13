#include <linkbot.h>
//#include "robot.ch"

CLinkbotI * robot (){
    CLinkbotI * robot = new CLinkbotI();
    return robot;
}

CLinkbotI getRobot(){
    return *robot();
}

int main(){
    
    getRobot().driveDistance(15, 1.5);
    (*robot()).driveDistance(15, 1.5);
    
}
