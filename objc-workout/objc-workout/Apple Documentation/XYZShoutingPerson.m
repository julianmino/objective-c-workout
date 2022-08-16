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

- (void)shoutAt:(id)person {
    if ([person isKindOfClass: [XYZPerson class]]) {
        XYZPerson *safePerson = (XYZPerson *)person;
        NSLog(@"HELLO %@!", safePerson.firstName);
    } else {
        NSLog(@"It's not a person");
    }
}

- (void)doSomething:(void (^)(void))callback {
    callback();
}

@end
