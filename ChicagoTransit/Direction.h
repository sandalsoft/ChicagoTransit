//
//  Directions.h
//  ChicagoTransit
//
//  Created by Eric Nelson on 10/5/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Direction : NSObject

typedef enum : NSUInteger {
    Northbound,
    Southbound,
    Eastbound,
    Westbound
} BusRouteDirection;


@property (nonatomic, assign) BusRouteDirection direction;

@end
