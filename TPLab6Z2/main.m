//
//  main.m
//  TPLab6Z2
//
//  Created by Ilya Huzei on 03.04.2020.
//  Copyright © 2020 Ilya Huzei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int number,sum=0;
        NSLog(@"Enter your number");
        scanf("%i",&number);
        
        if(number<0){
            number=-number;
        }
        
        while(number!=0){
            int digit=number%10;
            number/=10;
            sum+=digit;
        }
        NSLog(@"Summary of digits: %i",sum);
    }
    return 0;
}
