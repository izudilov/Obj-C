//
//  Calculator.m
//  ZI-1
//
//  Created by user179996 on 21.05.2021.
//

#import "Calculator.h"

@implementation Calculator

// MARK: - Methods

-(NSInteger)sum:(NSInteger) a plus:(NSInteger) b; {
    return a + b;
}

-(NSInteger)sub:(NSInteger) a minus:(NSInteger) b; {
    return a - b;
}

-(NSInteger)mult:(NSInteger) a multy:(NSInteger) b; {
    return a * b;
}

-(NSInteger)div:(NSInteger) a by:(NSInteger) b; {
    if (b == 0) {
        NSLog(@"Делить на ноль нельзя");
        return 0;
    }
    return a / b;
}

-(void)dealloc {
    NSLog(@"Dealloc calculator");
    [super dealloc];
}


@end
