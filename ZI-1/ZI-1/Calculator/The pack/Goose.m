//
//  Goose.m
//  ZI-1
//
//  Created by user179996 on 21.05.2021.
//

#import "Goose.h"

@implementation Goose


- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        [name retain];
        [name release];
        _name = name;
        NSLog(@"Create goose - %@", _name);
    }
    return self;
}

- (void)dealloc {
    NSLog(@"Delete goose - %@", _name);
    [_name release];
    [super dealloc];
}

@end
