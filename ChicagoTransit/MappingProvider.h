//
//  MappingProvider.h
//  ChicagoTransit
//
//  Created by Eric Nelson on 10/5/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <RestKit/RestKit.h>

@interface MappingProvider : NSObject

+ (RKMapping *) routeMapping;
+ (RKMapping *) busStopMapping;
@end
