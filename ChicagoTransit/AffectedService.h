//
//  AffectedService.h
//  ChicagoTransit
//
//  Created by Eric Nelson on 10/5/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AffectedService : NSObject

@property (nonatomic, copy) NSString *route;
@property (nonatomic, copy) NSString *routeDirection;
@property (nonatomic, copy) NSNumber *stopId;
@property (nonatomic, copy) NSString *stopName;


@end
