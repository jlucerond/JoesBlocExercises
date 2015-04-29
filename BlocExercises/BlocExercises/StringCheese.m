//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    /* WORK HERE */
    NSString *myString = [NSString stringWithFormat:  @"My favorite cheese is %@.", cheeseName];
    
    //test 
    return myString;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    /* WORK HERE */
    NSString *cheeseSentence = cheeseName;
    NSRange partToRemove = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    
    if (partToRemove.location < 100) {
    cheeseSentence = [cheeseName stringByReplacingOccurrencesOfString:@" cheese" withString:@"" options:NSCaseInsensitiveSearch range:partToRemove];
    }
    
    return cheeseSentence;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    NSString *statement = @"";
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        statement = @"1 cheese";
        
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        statement = [NSString stringWithFormat:@"%ld cheeses", cheeseCount];
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
    
    return statement;
}

@end
