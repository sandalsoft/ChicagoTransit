//
//  CTABusTracker.m
//  ChicagoTransit
//
//  Created by Eric Nelson on 10/5/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import "CTABusTracker.h"

@implementation CTABusTracker

+(NSArray *)getStops:(NSString *)route direction:(NSString *) direciton{
    
    __block NSArray *stops = [[NSArray alloc] init];
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:URL_GETROUTES
      parameters:@{@"key":API_KEY}
         success:^(AFHTTPRequestOperation *operation, id responseObject) {
             
             NSDictionary *data = [NSDictionary dictionaryWithXMLData:responseObject];
             stops = [NSArray arrayWithArray:[data valueForKeyPath:@"route"]];
             NSLog(@"XML: %@", [data description] );
             return stops;
         } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
             NSLog(@"Error: %@", error);
         }];
    
}

@end
