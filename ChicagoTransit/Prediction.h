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

@property (nonatomic, copy) NSDate *tmstmp;
@property (nonatomic, copy) NSString *typ;
@property (nonatomic, copy) NSNumber *stpid;
@property (nonatomic, copy) NSString *stpnm;
@property (nonatomic, copy) NSNumber *vid;
@property (nonatomic, copy) NSNumber *dstp;
@property (nonatomic, copy) NSString *rt;
@property (nonatomic, copy) Direction *rtdir;
@property (nonatomic, copy) NSString *des;
@property (nonatomic, copy) NSDate *prdtm;
@property (nonatomic, assign) Boolean *dly;

@end
