#include <stdarg.h>

class Preet {
    static int speed;

    public:
        void handlebar(double, ...);
};

void Preet::handlebar(double fin, ...) {
    va_list valist;
    va_start(valist, 1);
    
    if(va_count(valist) == 2){
        string_t name = va_arg(valist, string_t);
        string_t age = va_arg(valist, string_t);

        printf("Hello %s %s\n", name, age);
    }
    
    va_end(valist);
    
    printf(Preet::speed);
}

int Preet::speed = 10;

int main () {
    Preet preet;
    preet.handlebar(10);
}
