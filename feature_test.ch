#include <stdarg.h>

class Preet {
    public:
        void handlebar(double, ...);
};

void Preet::handlebar(double fin, ...) {
    va_list valist;
    va_start(valist, 1);
    
    if(va_count(valist) == 1){
        string_t name = va_arg(valist, string_t);
        printf("Hello %s\n", name);
    }
    
    va_end(valist);
}

int main () {
    Preet preet;
    preet.handlebar(10, "Tim");
}
