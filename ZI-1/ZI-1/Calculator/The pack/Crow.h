//
//  Crow.h
//  ZI-1
//
//  Created by user179996 on 21.05.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Crow : NSObject

- (instancetype) initWithName:(NSString *)name;

@property (nonatomic, strong) NSString *name;

@end

NS_ASSUME_NONNULL_END
