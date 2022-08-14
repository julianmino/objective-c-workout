//
//  Koala.h
//  objc-workout
//
//  Created by Julian Miño on 12/08/2022.
//

#import "Animal.h"
#import "BeautyContest.h"

NS_ASSUME_NONNULL_BEGIN

@interface Koala : Animal <BeautyContest>

-(NSString *) talkToMe:(NSString *)myName;
-(void) performTrick;
-(void) makeSound;

@end

NS_ASSUME_NONNULL_END
