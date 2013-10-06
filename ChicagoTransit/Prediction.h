//
//  Prediction.h
//  ChicagoTransit
//
//  Created by Eric Nelson on 10/5/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Direction.h"

@interface Prediction : NSObject

@property (nonatomic, copy) NSDate *timestamp;
@property (nonatomic, copy) NSString *type;
@property (nonatomic, copy) NSNumber *stopId;
@property (nonatomic, copy) NSString *stopName;
@property (nonatomic, copy) NSNumber *vehicleId;
@property (nonatomic, copy) NSNumber *distanceToStop;
@property (nonatomic, copy) NSString *route;
@property (nonatomic, copy) Direction *routeDirection;
@property (nonatomic, copy) NSString *destination;
@property (nonatomic, copy) NSDate *predictionTime;
@property (nonatomic, assign) Boolean *isDaily;

@end
