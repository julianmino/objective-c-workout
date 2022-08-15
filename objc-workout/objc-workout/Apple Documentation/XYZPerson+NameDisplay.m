//
//  XYZPerson+NameDisplay.m
//  objc-workout
//
//  Created by Julian Miño on 15/08/2022.
//

#import "XYZPerson+NameDisplay.h"

@implementation XYZPerson (NameDisplay)

- (void)displayFormalFullname {
    NSLog(@"%@, %@", self.lastName, self.firstName);
}

- (void)displayInformalFullname {
    NSLog(@"%@ %@", self.firstName, self.lastName);
}

@end
