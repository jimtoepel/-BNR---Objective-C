//
//  main.c
//  FutureTime
//
//  Created by Jim Toepel on 9/30/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#include <stdio.h>
#include <time.h>

int main(int argc, const char * argv[]) {

    long secondsSince1970 = time(NULL);
    printf("It has been %ld seconds since 1970\n", secondsSince1970);
    
    long secondsInFuture = secondsSince1970 + 40000000;
    printf("For million seconds from now will be: %ld\n", secondsInFuture);
    
    struct tm future;
    localtime_r(&secondsInFuture, &future);
    printf("In 4 million seconds, the time will be: %d:%d:%d\n", future.tm_hour, future.tm_min, future.tm_sec);
    
    int month = future.tm_mon + 1;
    int year = future.tm_year + 1900;
    
    printf("And the date will be %d-%d-%d\n", month, future.tm_mday, year);
    
    return 0;
}
