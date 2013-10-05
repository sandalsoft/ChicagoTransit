//
//  Stop.h
//  ChicagoTransit
//
//  Created by Eric Nelson on 10/5/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stop : NSObject

@property (nonatomic, copy) NSNumber *stpid;
@property (nonatomic, copy) NSString *stpnm;
@property (nonatomic, copy) NSNumber *lat;
@property (nonatomic, copy) NSNumber *lon;

@end
