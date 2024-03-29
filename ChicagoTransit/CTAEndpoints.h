//
//  CTAEndpoints.h
//  ChicagoTransit
//
//  Created by Eric Nelson on 10/5/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CTAEndpoints : NSObject

#define APIBASEURL @"http://www.ctabustracker.com/bustime/api/v1"

#define ROUTESURL  @"http://www.ctabustracker.com/bustime/api/v1/getroutes"
#define ROUTESPATH @"/getroutes"
#define ROUTESKEYPATH @"bustime-response.route"

#define BUSSTOPSURL @"http://www.ctabustracker.com/bustime/api/v1/getstops"
#define BUSSTOPSPATH @"/getstops"
#define BUSSTOPSKEYPATH @"bustime-response.stop"
@end
