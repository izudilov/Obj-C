//
//  Calculator2.m
//  ZI-1
//
//  Created by user179996 on 25.05.2021.
//

#import "Calculator2.h"



@implementation Calculator2

+(NSInteger) newCalculate: (NSInteger)value1 with: (NSInteger)value2 withBlock: (Block) block {

    return  block(value1, value2);
}

@end
