//
//  Calculator2.h
//  ZI-1
//
//  Created by user179996 on 25.05.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NSInteger (^Block) (NSInteger a, NSInteger b);

@interface Calculator2 : NSObject

+(NSInteger) newCalculate: (NSInteger)value1 with: (NSInteger)value2 withBlock: (Block) block;

@end

NS_ASSUME_NONNULL_END
