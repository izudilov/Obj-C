//
//  main.m
//  ObjLesson-4
//
//  Created by user179996 on 17.05.2021.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *students = @[
            [[Student new] firstName: @"Ivan" lastName: @"Ivanov" age: 33],
            [[Student new] firstName: @"Petr" lastName: @"Petrov" age: 20],
            [[Student new] firstName: @"Nikolay" lastName: @"Nikolaev" age: 25],
        ];

        for (Student *student in students) {
            [student newAge];
            NSLog(@"%@, %li", student.fullName, (long)student.age);
        }

    }
    return 0;
}
