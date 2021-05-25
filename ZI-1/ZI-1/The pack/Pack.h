//
//  Pack.h
//  ZI-1
//
//  Created by user179996 on 21.05.2021.
//

#import <Foundation/Foundation.h>
#import "Crow.h"
#import "Goose.h"
#import "Magpie.h"

NS_ASSUME_NONNULL_BEGIN

@interface Pack : NSObject

@property (nonatomic, strong) Crow * alpha;
@property (nonatomic, strong) Goose * beta;
@property (nonatomic, strong) Magpie * gamma;

- (instancetype) initWithCrow:(Crow*)crow plusGoose: (Goose *)goose plusMagpie: (Magpie *) magpie;

@end

NS_ASSUME_NONNULL_END
