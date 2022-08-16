//
//  XYZPerson.h
//  objc-workout
//
//  Created by Julian Miño on 15/08/2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ShouterProtocol <NSObject>

- (void)shoutAt:(id)person;
- (void)doSomething: (void(^)(void))callback;

@end

@interface XYZPerson : NSObject

@property (copy) NSString *firstName;
@property NSString *lastName;
@property NSDate *birthDate;
@property int age;
@property (readonly) int dni;
@property (weak) XYZPerson *partner;
@property (readonly) float height;
@property (readonly) float weight;
@property (weak) id <ShouterProtocol> shouter;

- (void) sayHello;
- (void) saySomething: (NSString *)greeting;
- (XYZPerson *) initWith:(NSString *)aFirstName
                lastName:(NSString *)aLastName
               birthDate:(NSDate * _Nullable)aBirthDate
                 partner:(XYZPerson * _Nullable)aPartner;

- (void) measureHeight: (float) height;
- (void) measureWeight: (float) weight;

+ (XYZPerson *) person;

@end

@interface XYZPerson ()

@property float height;
@property float weight;

@end

NS_ASSUME_NONNULL_END
