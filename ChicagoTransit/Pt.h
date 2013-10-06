//
//  Point.h
//  ChicagoTransit
//
//  Created by Eric Nelson on 10/5/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pt: NSObject

@property (nonatomic, copy) NSNumber *sequence;
@property (nonatomic, copy) NSString *type;
@property (nonatomic, copy) NSNumber *stopId;
@property (nonatomic, copy) NSString *stopName;
@property (nonatomic, copy) NSNumber *patternDistance;
@property (nonatomic, copy) NSNumber *latitude;
@property (nonatomic, copy) NSNumber *longitude;

@end
