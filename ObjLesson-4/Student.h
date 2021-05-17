//
//  Student.h
//  ObjLesson-4
//
//  Created by user179996 on 17.05.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *surname;
@property (nonatomic, strong, readonly) NSString *fullName;
@property (nonatomic, readonly) NSInteger age;

-(void) newAge;

-(instancetype) firstName: (NSString *) name lastName: (NSString *)surname age: (NSInteger) age;


@end

NS_ASSUME_NONNULL_END
