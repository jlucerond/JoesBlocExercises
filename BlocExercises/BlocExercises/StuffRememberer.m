//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    /* WORK HERE */
    self.array1Strong = arrayToRemember;
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    /* WORK HERE */
    self.array2Copy = arrayToCopy;
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    /* WORK HERE */
    self.numberToRemember = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {
    /* WORK HERE */
    return [self.array1Strong mutableCopy];
}

- (NSMutableArray *) arrayYouShouldCopy {
    /* WORK HERE */
    return [self.array2Copy mutableCopy];
}

- (CGFloat) floatYouShouldRemember {
    /* WORK HERE */
    return self.numberToRemember;
}

@end