//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    NSNumber *myNSNumber = @([number floatValue] * 2);
    
    return myNSNumber;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSMutableArray *myArray = [@[] mutableCopy];
    NSNumber *smallerNumber = (number < otherNumber) ? @(number) : @(otherNumber);
    NSNumber *largerNumber = (number > otherNumber) ? @(number) : @(otherNumber);
    
    NSLog(@"smaller number is %@", smallerNumber);
    NSLog(@"larger number is %@", largerNumber);
    
    while (smallerNumber <= largerNumber){
        [myArray addObject:smallerNumber];
        smallerNumber = @([smallerNumber integerValue] + 1);
    }
    
    return myArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    NSNumber *lowestInteger = @(100000000);
    
    for (NSNumber *thisNumber in arrayOfNumbers) {
        if (thisNumber < lowestInteger){
            lowestInteger = thisNumber;
        }
    }
    
    return [lowestInteger integerValue];
}

@end
