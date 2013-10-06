//
//  MappingProvider.m
//  ChicagoTransit
//
//  Created by Eric Nelson on 10/5/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import "MappingProvider.h"
#import "Route.h"

@implementation MappingProvider

+ (RKMapping *) routeMapping {
    RKObjectMapping *mapping = [RKObjectMapping mappingForClass:[Route class]];
    [mapping addAttributeMappingsFromDictionary:
     @{@"rt.text":@"rt",
       @"rtnm.text":@"rtnm"}];
     return mapping;
}


@end
