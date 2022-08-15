//
//  XYZPerson.m
//  objc-workout
//
//  Created by Julian Miño on 15/08/2022.
//

#import "XYZPerson.h"

@implementation XYZPerson

-(void)dealloc {
    NSLog(@"%@ is being deallocated", self.firstName);
}

- (void)sayHello {
    [self saySomething:
     [NSString stringWithFormat:@"Hello World! My name is %@ %@", self.firstName, self.lastName]
    ];
}

- (void)saySomething:(NSString *)greeting {
    NSLog(@"%@", greeting);
}

- (XYZPerson *)initWith:(NSString *)aFirstName lastName:(NSString *)aLastName birthDate:(NSDate *)aBirthDate partner:(XYZPerson *)aPartner {
    self = [super init];
    if (self) {
        [self setFirstName:aFirstName];
        [self setLastName:aLastName];
        [self setBirthDate:aBirthDate];
        [self setPartner:aPartner];
        [aPartner setPartner:self];
    }
    return self;
}

- (void)measureHeight:(float)height {
    [self setHeight:height];
}

- (void)measureWeight:(float)weight {
    [self setWeight:weight];
}

+ (XYZPerson *)person {
    return [[self alloc] init];
}

@end
