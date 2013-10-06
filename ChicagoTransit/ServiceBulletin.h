//
//  ServiceBulletin.h
//  ChicagoTransit
//
//  Created by Eric Nelson on 10/5/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AffectedService.h"

@interface ServiceBulletin : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *subject;
@property (nonatomic, copy) NSString *detail;
@property (nonatomic, copy) NSString *brief;
@property (nonatomic, copy) NSString *priority;
@property (nonatomic, copy) AffectedService *affectedService;

@end
