#include <stdarg.h>

class Preet {
    static int speed;

    public:
        Preet();
        void handlebar(double, ...);
};

int Preet::speed = 1;

Preet::Preet() {
    
    //Preet::speed = 2;
    printf(Preet::speed);
    
}

int main () {
    //Preet::speed = 2;

    Preet obj;
}
