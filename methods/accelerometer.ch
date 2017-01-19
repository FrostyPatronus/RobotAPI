void Robot::onBump(void (*funcPtr)()) {
    CLinkbotI robot = (*this->robot);
    double y1, y2;
    
    // Initial Y acceleration. Constant
    robot.getAccelerometerData(NULL, y1, NULL);
    
    // Final Y acceleration. Variable
    robot.getAccelerometerData(NULL, y2, NULL);
        
    while(abs(y2 - y1) < 0.03) {
        robot.getAccelerometerData(NULL, y2, NULL);
        printf("%d\n", y2);
    }
    
    (*funcPtr)();
}
