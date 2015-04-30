//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    NSString *faveDrink = characterDictionary[@"favorite drink"];
    
    return faveDrink;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
    NSMutableArray *arrayOfDrinks = [[NSMutableArray alloc] init];
    for (NSDictionary *character in charactersArray) {
        NSString *faveDrink = character[@"favorite drink"];
        [arrayOfDrinks addObject:faveDrink];
    }
    
    return arrayOfDrinks;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    NSMutableDictionary *newCharacterDicitonary = [characterDictionary mutableCopy];
    [newCharacterDicitonary setObject:@"Live long and prosper" forKey:@"quote"];
    
    return newCharacterDicitonary;
}

@end
