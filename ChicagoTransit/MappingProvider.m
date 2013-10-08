//
//  MappingProvider.m
//  ChicagoTransit
//
//  Created by Eric Nelson on 10/5/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import "MappingProvider.h"
#import "BusRoute.h"
#import "BusStop.h"

@implementation MappingProvider

+ (RKMapping *) routeMapping {
    RKObjectMapping *mapping = [RKObjectMapping mappingForClass:[BusRoute class]];
    [mapping addAttributeMappingsFromDictionary:
     @{@"rt.text"   :@"route",
       @"rtnm.text" :@"routeName"}];
     return mapping;
}

+ (RKMapping *) busStopMapping {
/*
 <bustime-response>
    <stop>
         <stpid>4727</stpid>
         <stpnm>1633 W Madison</stpnm>
         <lat>41.881396030205</lat>
         <lon>-87.668516635895</lon>
     </stop>
*/
    RKObjectMapping *mapping = [RKObjectMapping mappingForClass:[BusStop class]];
    [mapping addAttributeMappingsFromDictionary:
     @{
       @"stpid.text":@"stopId",
       @"stpnm.text":@"stopName",
       @"lat.text"  :@"latitude",
       @"lon.text"  :@"longitude"
       }];
    return mapping;

}

@end

