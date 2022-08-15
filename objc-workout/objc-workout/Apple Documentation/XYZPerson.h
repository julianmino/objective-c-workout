//
//  XYZPerson.h
//  objc-workout
//
//  Created by Julian Miño on 15/08/2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XYZPerson : NSObject

@property NSString *firstName;
@property NSString *lastName;
@property NSDate *birthDate;
@property int age;
@property (readonly) int dni;

- (void) sayHello;
- (void) saySomething: (NSString *)greeting;

+ (XYZPerson *) person;

@end

NS_ASSUME_NONNULL_END
