//
//  NSDictionary+URLAdditions.m
//  ChicagoTransit
//
//  Created by Eric Nelson on 10/6/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import "NSDictionary+URLAdditions.h"

@implementation NSDictionary (URLAdditions)

- (NSString *)stringByAppendingQueryParameters {
    NSMutableString *queryString = [NSMutableString stringWithFormat:@"?"];
    for(id key in self) {
        id value = [self objectForKey:key];
        [queryString appendString:[NSString stringWithFormat:@"%@=%@&", key, value]];
    }
    return queryString;
}

@end
