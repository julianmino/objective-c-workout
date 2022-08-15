//
//  XYZPerson.m
//  objc-workout
//
//  Created by Julian Miño on 15/08/2022.
//

#import "XYZPerson.h"

@implementation XYZPerson

- (void)sayHello {
    [self saySomething: @"Hello World!"];
}

- (void)saySomething:(NSString *)greeting {
    NSLog(@"%@", greeting);
}

+ (XYZPerson *)person {
    return [[self alloc] init];
}

@end
