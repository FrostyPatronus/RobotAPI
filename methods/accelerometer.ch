void Robot::onBump(void (*funcPtr)()) {
    double y1, y2;
    
    // Initial Y acceleration. Constant
    (*this->robot).getAccelerometerData(NULL, y1, NULL);
    
    // Final Y acceleration. Variable
    (*this->robot).getAccelerometerData(NULL, y2, NULL);
        
    while(abs(y2 - y1) < 0.03) {
        (*this->robot).getAccelerometerData(NULL, y2, NULL);
    }
    
    (*funcPtr)();
}
