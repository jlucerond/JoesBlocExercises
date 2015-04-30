//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
    NSArray *arrayOfCharacters = [characterString componentsSeparatedByString:@";"];
    
    return arrayOfCharacters;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    NSString *stringOfCharacters = [characterArray componentsJoinedByString:@";"];
    return stringOfCharacters;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    NSMutableArray *alphaArrayOfCharacters = [characterArray mutableCopy];
    NSSortDescriptor *sorter = [[NSSortDescriptor alloc] initWithKey:nil ascending:true selector: @selector(localizedCaseInsensitiveCompare:)];
    
    [alphaArrayOfCharacters sortUsingDescriptors:@[sorter]];
    
    return alphaArrayOfCharacters;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
    NSMutableArray *mutCharArray = [[NSMutableArray alloc] initWithArray:characterArray];
    NSPredicate *findWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    [mutCharArray filterUsingPredicate:findWorf];
    
    if (mutCharArray.count == 0){
        return NO;
    }
    
    
    return YES;
}

@end
