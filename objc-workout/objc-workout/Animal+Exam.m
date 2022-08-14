//
//  Animal+Exam.m
//  objc-workout
//
//  Created by Julian Miño on 12/08/2022.
//

#import "Animal+Exam.h"

@implementation Animal (Exam)

- (BOOL) checkedByVet {
    return 1;
}

- (void)getShots {
    NSLog(@"%@ got its shots", self.name);
}

@end
