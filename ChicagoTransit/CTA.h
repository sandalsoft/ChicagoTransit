//
//  CTA.h
//  ChicagoTransit
//
//  Created by Eric Nelson on 10/8/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CTA : NSObject

+ (void)busRoutesOnSuccess:(void (^)(NSArray *results))success failure:(void (^)(NSError *error))failure;

+ (void)busStopsWithDirection:(NSString *)direction withRoute:(NSString *)route success:(void (^)(NSArray *results))success failure:(void (^)(NSError *error))failure;


@end
