//
//  XYZShoutingPerson.m
//  objc-workout
//
//  Created by Julian Miño on 15/08/2022.
//

#import "XYZShoutingPerson.h"

@implementation XYZShoutingPerson

-(void)saySomething:(NSString *)greeting {
    NSString *upperGreeting = [greeting uppercaseString];
    NSLog(@"%@", upperGreeting);
}

@end
