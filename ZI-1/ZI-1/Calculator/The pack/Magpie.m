//
//  Magpie.m
//  ZI-1
//
//  Created by user179996 on 21.05.2021.
//

#import "Magpie.h"

@implementation Magpie

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        [name retain];
        [name release];
        _name = name;
        NSLog(@"Create magpie - %@", _name);
    }
    return self;
}

- (void)dealloc {
    NSLog(@"Delete magpie - %@", _name);
    [_name release];
    [super dealloc];
}

@end
