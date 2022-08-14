//
//  Animal.h
//  objc-workout
//
//  Created by Julian Miño on 12/08/2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Animal : NSObject

@property NSString *name;
@property NSString *favFood;
@property NSString *sound;

@property float weight;

// The minus sign "-" indicates it is an instance method (accessible when we create an instance of this object)
// The plus sign "+" indicates it is a class method (not accessible on an instance level)

-(instancetype) initWithName:(NSString*) defaultName;
-(void) getInfo;
-(float) weightInKg:(float) weightInLbs;
-(NSString *) talkToMe: (NSString *) myName;
-(int) getSum: (int) num1
   nextNumber: (int) num2;

-(void) makeSound;

@end

NS_ASSUME_NONNULL_END
