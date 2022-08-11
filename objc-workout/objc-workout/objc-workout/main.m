//
//  main.m
//  objc-workout
//
//  Created by Julian Miño on 11/08/2022.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *nothing = nil;
        NSLog(@"Location of nil : %p ", nothing); // All pointers that have nil value point to the same location (0x0).
       
        
//    We call objects functions by putting it inside brackets [] and separed by space
        
        NSString *quote = @"Dogs have masters, while cats have staff";
        NSLog(@"Size of String: %d", (int) [quote length]);
        NSLog(@"Character at position 5: %c", [quote characterAtIndex:5]);
     
        
//    Dynamic String
        
        char *name = "Derek";
        NSString *myName = [NSString stringWithFormat:@"- %s", name];

        BOOL isStringEqual = [quote isEqualToString:myName];
        printf("Are string equal: %d\n", isStringEqual);
    
        
//    Casting Variables
        
        const char *uCString = [[myName uppercaseString]UTF8String]; // UTF8String converts NSString to char
        printf("%s\n", uCString);

        NSString *wholeQuote = [quote stringByAppendingString:myName];

        NSRange searchResult = [wholeQuote rangeOfString:@"Derek"];

        if (searchResult.location == NSNotFound) {
            NSLog(@"String not found");
        } else {
            printf("Derek is at index %lu and is %lu long\n", searchResult.location, searchResult.length);
        }

        NSRange range = NSMakeRange(42, 5);
        const char *newQuote = [[wholeQuote stringByReplacingCharactersInRange:range withString:@"Anon"]UTF8String];

        printf("%s", newQuote);
        
        
//    Mutable Strings
        
        NSMutableString *groceryList = [NSMutableString stringWithCapacity:50];
        [groceryList appendFormat:@"%s", "Potato, Banana, Pasta"];
        NSLog(@"groceryList : %@", groceryList);
        [groceryList deleteCharactersInRange:NSMakeRange(0, 8)];
        NSLog(@"groceryList : %@", groceryList);
        [groceryList insertString:@", Apple" atIndex:13];
        NSLog(@"groceryList : %@", groceryList);
        [groceryList replaceCharactersInRange:NSMakeRange(15, 5) withString:@"Orange"];
        NSLog(@"groceryList : %@", groceryList);
        
        
//    Arrays
        
        NSArray *officeSupplies = @[
            @"Pencils",
            @"Paper"];

        NSLog(@"First : %@", officeSupplies[0]);
        NSLog(@"Office Supplies: %@", officeSupplies);

        BOOL containsItem = [officeSupplies containsObject:@"Pencils"];
        NSLog(@"Need Pencils : %d", containsItem);

        NSLog(@"Total of Items: %d", (int) [officeSupplies count]);

        NSLog(@"Index of Pencils is at %lu", (unsigned long) [officeSupplies indexOfObject:@"Pencils"]);

        NSMutableArray *heroes = [NSMutableArray arrayWithCapacity:5];
        [heroes addObject:@"Batman"];
        [heroes addObject:@"Superman"];
        [heroes addObject:@"Flash"];
        [heroes addObject:@"Ironman"];
        [heroes addObject:@"Hulk"];

        [heroes insertObject:@"Wonder woman" atIndex:2];

        NSLog(@"%@", heroes);

        [heroes removeObject:@"Batman"];
        [heroes removeObjectAtIndex:0];

        for (int i = 0; i < [heroes count]; i++) {
            NSLog(@"%@", heroes[i]);
        }
    }
    return 0;
}
