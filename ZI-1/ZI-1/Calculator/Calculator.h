//
//  Calculator.h
//  ZI-1
//
//  Created by user179996 on 21.05.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculator : NSObject

-(NSInteger)sum:(NSInteger) a plus:(NSInteger) b;
-(NSInteger)sub:(NSInteger) a minus:(NSInteger) b;
-(NSInteger)mult:(NSInteger) a multy:(NSInteger) b;
-(NSInteger)div:(NSInteger) a by:(NSInteger) b;

@end

NS_ASSUME_NONNULL_END
