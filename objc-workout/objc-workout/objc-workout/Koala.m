//
//  Koala.m
//  objc-workout
//
//  Created by Julian Miño on 12/08/2022.
//

#import "Koala.h"

@implementation Koala

-(NSString *) talkToMe:(NSString *)myName {
    NSString *response = [NSString stringWithFormat:@"Hello %@ says %@", myName, self.name];
    return response;
}

- (void)performTrick {
    NSLog(@"%@ performs a hand stand", self.name);
}

- (void)lookCute {
    NSLog(@"%@ acts super cute", self.name);
}

- (void)makeSound {
    NSLog(@"%@ says Yawn", self.name);
}
@end
