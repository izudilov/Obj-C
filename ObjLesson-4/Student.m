//
//  Student.m
//  ObjLesson-4
//
//  Created by user179996 on 17.05.2021.
//

#import "Student.h"

@implementation Student

-(NSString *)fullName {

    return [NSString stringWithFormat:@"%@ %@", _name, _surname];
}

-(void)newAge {

    _age++;
}

-(NSString *)description {

    return [NSString stringWithFormat:@"<Student: FirstName: %@ LastName: %@ Age: %li>",_name, _surname, (long)_age];
}


-(instancetype) firstName: (NSString *) name lastName: (NSString *)surname age: (NSInteger) age {

    if (self) {
        _name = name;
        _surname = surname;
        _age = age;
    }
    return self;
}

@end
