//
//  XYZPerson.h
//  objc-workout
//
//  Created by Julian Miño on 15/08/2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XYZPerson : NSObject

@property (copy) NSString *firstName;
@property NSString *lastName;
@property NSDate *birthDate;
@property int age;
@property (readonly) int dni;
@property (weak) XYZPerson *partner;

- (void) sayHello;
- (void) saySomething: (NSString *)greeting;
- (XYZPerson *) initWith:(NSString *)aFirstName
                lastName:(NSString *)aLastName
               birthDate:(NSDate * _Nullable)aBirthDate
                 partner:(XYZPerson * _Nullable)aPartner;

+ (XYZPerson *) person;

@end

NS_ASSUME_NONNULL_END
