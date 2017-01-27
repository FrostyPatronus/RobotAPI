//#include <linkbot.h>
//#include <stdarg.h>

#include "robot.ch"

Robot::defaultR = 1.75;
Robot::defaultTW = 3.69;
    
Robot robot1 = Robot(3);
Robot robot2 = Robot(3);


array string_t colors[8][3] = {
    {"red", "blue", "purple"},
    {"yellow", "red", "orange"},
    {"red", "green", "yellow"},
    {"red", "blue", "magenta"},
    {"green", "blue", "cyan"},
    {"yellow", "magenta", "red"},
    {"cyan", "magenta", "blue"},
    {"yellow", "cyan", "green"}
};

int main(){
    int i;
    for (i = 1; 1;i++ ) {        
        printf("What is the combination between %s and %s? \n", colors[i][0], colors[i][1]);
        (*robot1.getRobot()).setLEDColor(colors[i][0]);
        (*robot2.getRobot()).setLEDColor(colors[i][1]);
        
        string_t answer;
        scanf("%s", &answer);
        
        if (answer == colors[i][2]){
            printf("YOU WON\n");
        }
    }
}
