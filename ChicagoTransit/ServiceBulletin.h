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

@property (nonatomic, copy) NSString *nm;
@property (nonatomic, copy) NSString *sbj;
@property (nonatomic, copy) NSString *dtl;
@property (nonatomic, copy) NSString *brf;
@property (nonatomic, copy) NSString *prty;
@property (nonatomic, copy) AffectedService *srvc;

@end
