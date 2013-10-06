//
//  Pattern.h
//  ChicagoTransit
//
//  Created by Eric Nelson on 10/5/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pt.h"
@interface Pattern : NSObject


@property (nonatomic, copy) NSNumber *patternId;
@property (nonatomic, copy) NSNumber *length;
@property (nonatomic, copy) NSString *routeDirection;
@property (nonatomic, copy) Pt *points;
    
@end
