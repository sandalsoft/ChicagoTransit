//
//  Vehicle.h
//  ChicagoTransit
//
//  Created by Eric Nelson on 10/5/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject

@property (nonatomic, copy) NSString *vehicleId;
@property (nonatomic, copy) NSString *timestamp;
@property (nonatomic, copy) NSNumber *latitude;
@property (nonatomic, copy) NSNumber *longitude;
@property (nonatomic, copy) NSNumber *heading;
@property (nonatomic, copy) NSNumber *patternId;
@property (nonatomic, copy) NSNumber *patterDistance;
@property (nonatomic, copy) NSString *route;
@property (nonatomic, copy) NSString *destination;
@property (nonatomic, assign) Boolean *isDaily;


@end
