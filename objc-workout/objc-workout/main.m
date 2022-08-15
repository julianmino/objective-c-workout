//
//  main.m
//  objc-workout
//
//  Created by Julian Miño on 11/08/2022.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
#import "Koala.h"
#import "Animal+Exam.h"
#import "Dog.h"
#import "XYZPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        NSString *nothing = nil;
//        NSLog(@"Location of nil : %p ", nothing); // All pointers that have nil value point to the same location (0x0).
//
//
////    We call objects functions by putting it inside brackets [] and separed by space
//
//        NSString *quote = @"Dogs have masters, while cats have staff";
//        NSLog(@"Size of String: %d", (int) [quote length]);
//        NSLog(@"Character at position 5: %c", [quote characterAtIndex:5]);
//
//
////    Dynamic String
//
//        char *name = "Derek";
//        NSString *myName = [NSString stringWithFormat:@"- %s", name];
//
//        BOOL isStringEqual = [quote isEqualToString:myName];
//        printf("Are string equal: %d\n", isStringEqual);
//
//
////    Casting Variables
//
//        const char *uCString = [[myName uppercaseString]UTF8String]; // UTF8String converts NSString to char
//        printf("%s\n", uCString);
//
//        NSString *wholeQuote = [quote stringByAppendingString:myName];
//
//        NSRange searchResult = [wholeQuote rangeOfString:@"Derek"];
//
//        if (searchResult.location == NSNotFound) {
//            NSLog(@"String not found");
//        } else {
//            printf("Derek is at index %lu and is %lu long\n", searchResult.location, searchResult.length);
//        }
//
//        NSRange range = NSMakeRange(42, 5);
//        const char *newQuote = [[wholeQuote stringByReplacingCharactersInRange:range withString:@"Anon"]UTF8String];
//
//        printf("%s", newQuote);
//
//
////    Mutable Strings
//
//        NSMutableString *groceryList = [NSMutableString stringWithCapacity:50];
//        [groceryList appendFormat:@"%s", "Potato, Banana, Pasta"];
//        NSLog(@"groceryList : %@", groceryList);
//        [groceryList deleteCharactersInRange:NSMakeRange(0, 8)];
//        NSLog(@"groceryList : %@", groceryList);
//        [groceryList insertString:@", Apple" atIndex:13];
//        NSLog(@"groceryList : %@", groceryList);
//        [groceryList replaceCharactersInRange:NSMakeRange(15, 5) withString:@"Orange"];
//        NSLog(@"groceryList : %@", groceryList);
//
//
////    Arrays
//
//        NSArray *officeSupplies = @[
//            @"Pencils",
//            @"Paper"];
//
//        NSLog(@"First : %@", officeSupplies[0]);
//        NSLog(@"Office Supplies: %@", officeSupplies);
//
//        BOOL containsItem = [officeSupplies containsObject:@"Pencils"];
//        NSLog(@"Need Pencils : %d", containsItem);
//
//        NSLog(@"Total of Items: %d", (int) [officeSupplies count]);
//
//        NSLog(@"Index of Pencils is at %lu", (unsigned long) [officeSupplies indexOfObject:@"Pencils"]);
//
//        NSMutableArray *heroes = [NSMutableArray arrayWithCapacity:5];
//        [heroes addObject:@"Batman"];
//        [heroes addObject:@"Superman"];
//        [heroes addObject:@"Flash"];
//        [heroes addObject:@"Ironman"];
//        [heroes addObject:@"Hulk"];
//
//        [heroes insertObject:@"Wonder woman" atIndex:2];
//
//        NSLog(@"%@", heroes);
//
//        [heroes removeObject:@"Batman"];
//        [heroes removeObjectAtIndex:0];
//
//        for (int i = 0; i < [heroes count]; i++) {
//            NSLog(@"%@", heroes[i]);
//        }
//
////    Using Classes
//
//        Animal *dog = [[Animal alloc] init];
//
//        [dog getInfo];
//
//        NSLog(@"The dogs name is %@", [dog name]);
//
//        [dog setName:@"Spot"];
//
//        NSLog(@"The dogs name is %@", [dog name]);
//
//        Animal *cat = [[Animal alloc] initWithName:@"Whiskers"];
//
//        NSLog(@"The cats name is %@", cat.name);
//
//        NSLog(@"180 lbs = %.2f kg", [dog weightInKg:180]);
//
//        NSLog(@"3 + 5 = %d", [dog getSum:3 nextNumber:5]);
//
//        NSLog(@"%@", [dog talkToMe:@"Derek"]);
//
//        Koala *herbie = [[Koala alloc] initWithName:@"Herbie"];
//
//        NSLog(@"%@", [herbie talkToMe:@"Derek"]);
//
//        NSLog(@"Did %@ receive shots : %d", herbie.name, [herbie checkedByVet]);
//
//        [herbie getShots];
//
//        [dog getInfo];
//
//        [herbie lookCute];
//        [herbie performTrick];
//
//
////    Annonymous Functions
//
//        float (^getArea) (float height, float width);
//
//        getArea = ^float(float width, float height) {
//            return width * height;
//        };
//
//        NSLog(@"Area of 3 width and 50 height : %.1f", getArea(3,50));
//
//        enum Ratings {
//            Poor = 1,
//            Ok = 2,
//            Great = 3
//        };
//
//        enum Ratings matrixRating = Great;
//
//        NSLog(@"Matrix %u", matrixRating);
//
//
////    Dynamic Binding
//
//        Dog *grover = [[Dog alloc]initWithName:@"Grover"];
//
//        NSArray *animals = [[NSArray alloc]initWithObjects: herbie, grover, nil];
//
//        id object1 = [animals objectAtIndex:0];
//        id object2 = [animals objectAtIndex:1];
//
//        [object1 makeSound];
//        [object2 makeSound];
        
        XYZPerson *person1 = [XYZPerson person];
        [person1 sayHello];
        
        XYZPerson *person2;
        
        if (person1 == person2) {
            NSLog(@"person1 and person2 are the same object with the same memory location");
        }
        
        if ([person1 isEqual:person2]) {
            NSLog(@"person1 and person2 represent the same data type");
        }
        
        int someNumber = 42;
        
        if (someNumber == 42) {
            NSLog(@"This is a number validation");
        }
        
        NSDate *someDate = [NSDate date];
        NSDate *anotherDate = [NSDate dateWithTimeIntervalSinceReferenceDate:2000];
        
        if ([someDate compare:anotherDate] == NSOrderedAscending) {
            NSLog(@"someDate is earlier than anotherDate");
        }
        
    }
    return 0;
}
