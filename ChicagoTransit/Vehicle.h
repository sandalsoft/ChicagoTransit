//
//  Vehicle.h
//  ChicagoTransit
//
//  Created by Eric Nelson on 10/5/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject

@property (nonatomic, copy) NSString *vid;
@property (nonatomic, copy) NSString *tmstmp;
@property (nonatomic, copy) NSNumber *lat;
@property (nonatomic, copy) NSNumber *lon;
@property (nonatomic, copy) NSNumber *hdg;
@property (nonatomic, copy) NSNumber *pid;
@property (nonatomic, copy) NSNumber *pdist;
@property (nonatomic, copy) NSString *rt;
@property (nonatomic, copy) NSString *dst;
@property (nonatomic, assign) Boolean *dly;


@end
