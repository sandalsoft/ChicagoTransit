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


@property (nonatomic, copy) NSNumber *pid;
@property (nonatomic, copy) NSNumber *ln;
@property (nonatomic, copy) NSString *rtdir;
@property (nonatomic, copy) Pt *pt;
    
@end
