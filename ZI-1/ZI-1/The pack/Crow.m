//
//  Crow.m
//  ZI-1
//
//  Created by user179996 on 21.05.2021.
//

#import "Crow.h"

@implementation Crow

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        //[name retain];
        //[name release];
        _name = name;
        NSLog(@"Create crow - %@", _name);
    }
    return self;
}

- (void)dealloc {
    NSLog(@"Delete crow - %@", _name);
    //[_name release];
    //[super dealloc];
}

@end
