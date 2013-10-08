//
//  CTA.m
//  ChicagoTransit
//
//  Created by Eric Nelson on 10/8/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import "CTA.h"

#import <RestKit/RestKit.h>
#import "MappingProvider.h"
#import "RKXMLReaderSerialization.h"
#import <RKManagedObjectRequestOperation.h>
#import "Direction.h"

@implementation CTA



+ (void)busStopsWithDirection:(NSString *)direction withRoute:(NSString *)route success:(void (^)(NSArray *results))success failure:(void (^)(NSError *error))failure {

    
    [RKMIMETypeSerialization registerClass:[RKXMLReaderSerialization class] forMIMEType:RKMIMETypeTextXML];
    
    RKMapping *mapping = [MappingProvider busStopMapping];
    RKResponseDescriptor *responseDescrptor = [RKResponseDescriptor
                                               responseDescriptorWithMapping:mapping
                                               method:RKRequestMethodGET
                                               pathPattern:nil
                                               keyPath:BUSSTOPSKEYPATH
                                               statusCodes:RKStatusCodeIndexSetForClass(RKStatusCodeClassSuccessful)];
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@?rt=%@&dir=%@&key=%@", BUSSTOPSURL, route, direction, API_KEY]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    
    RKObjectRequestOperation *operation = [[RKObjectRequestOperation alloc] initWithRequest:request responseDescriptors:@[responseDescrptor]];
    
    [operation setCompletionBlockWithSuccess:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult) {
        NSLog(@"result array: %@", [[mappingResult firstObject] description]);
        success([mappingResult array]);
    } failure:^(RKObjectRequestOperation *operation, NSError *error) {
        failure(error);
    }];
    
    [operation start];
    
}


+ (void)busRoutesOnSuccess:(void (^)(NSArray *results))success failure:(void (^)(NSError *error))failure{

    [RKMIMETypeSerialization registerClass:[RKXMLReaderSerialization class] forMIMEType:RKMIMETypeTextXML];
    
    
    RKMapping *mapping = [MappingProvider routeMapping];
    RKResponseDescriptor *responseDescrptor = [RKResponseDescriptor
                                               responseDescriptorWithMapping:mapping
                                               method:RKRequestMethodGET
                                               pathPattern:nil
                                               keyPath:ROUTESKEYPATH
                                               statusCodes:RKStatusCodeIndexSetForClass(RKStatusCodeClassSuccessful)];
    
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@?key=%@", ROUTESURL, API_KEY]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    
    RKObjectRequestOperation *operation = [[RKObjectRequestOperation alloc] initWithRequest:request responseDescriptors:@[responseDescrptor]];
    
    [operation setCompletionBlockWithSuccess:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult) {
        NSLog(@"result array: %@", [[mappingResult firstObject] description]);
        success([mappingResult array]);
    } failure:^(RKObjectRequestOperation *operation, NSError *error) {
        failure(error);
    }];
    
    [operation start];
}


@end
