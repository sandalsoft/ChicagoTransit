//
//  AffectedService.h
//  ChicagoTransit
//
//  Created by Eric Nelson on 10/5/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AffectedService : NSObject

@property (nonatomic, copy) NSString *rt;
@property (nonatomic, copy) NSString *rtdir;
@property (nonatomic, copy) NSNumber *stpid;
@property (nonatomic, copy) NSString *stpnm;


@end
