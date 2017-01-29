#include <stdarg.h>
#include <linkbot.h>

class Preet {

    public:
        CLinkbotI * robot;
        CLinkbotI & getRobot();
        Preet();
};

CLinkbotI & Preet::getRobot(){
    return *this->robot;
}

Preet::Preet() {
    this->robot = new CLinkbotI();
}

int main () {
    //Preet::speed = 2;
    Preet obj;
    
    // printf(obj.robot);
    obj.getRobot().driveDistance(1, 1);
}
