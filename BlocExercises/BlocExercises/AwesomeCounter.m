//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSMutableString *myString = [NSMutableString stringWithString:@""];
    NSInteger largerNumber = 0;
    NSInteger smallerNumber = 0;
    if (number > otherNumber){
        largerNumber = number;
        smallerNumber = otherNumber;
    }
    else{
        largerNumber = otherNumber;
        smallerNumber = number;
    }
    
    while (smallerNumber <= largerNumber) {
        [myString appendFormat:@"%ld", (long)smallerNumber];
        smallerNumber++;
    }
    
    return myString;
}

@end
