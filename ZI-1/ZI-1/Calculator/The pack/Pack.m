//
//  Pack.m
//  ZI-1
//
//  Created by user179996 on 21.05.2021.
//

#import "Pack.h"

@implementation Pack

- (instancetype) initWithCrow:(Crow*)crow plusGoose: (Goose *)goose plusMagpie: (Magpie *) magpie {
    
    self = [super init];
    if (self) {
        
        [crow retain];
        [crow release];
        _alpha = crow;

        [goose retain];
        [goose release];
        _beta = goose;

        [magpie retain];
        [magpie release];
        _gamma = magpie;

        NSLog(@"Create: %@, %@, %@", _alpha.name, _beta.name, _gamma.name);
    }
    return self;
}

- (void)dealloc {
    [_alpha release];
    [_beta release];
    [_gamma release];
    
    NSLog(@"Deleted the pack");
    [super dealloc];
}

@end
