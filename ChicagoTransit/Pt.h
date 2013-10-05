//
//  Point.h
//  ChicagoTransit
//
//  Created by Eric Nelson on 10/5/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pt: NSObject

@property (nonatomic, copy) NSNumber *seq;
@property (nonatomic, copy) NSString *typ;
@property (nonatomic, copy) NSNumber *stpid;
@property (nonatomic, copy) NSString *stpnm;
@property (nonatomic, copy) NSNumber *pdist;
@property (nonatomic, copy) NSNumber *lat;
@property (nonatomic, copy) NSNumber *lon;

@end
