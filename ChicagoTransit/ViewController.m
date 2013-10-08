//
//  ViewController.m
//  ChicagoTransit
//
//  Created by Eric Nelson on 10/1/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import "ViewController.h"
#import <RestKit/RestKit.h>
#import "MappingProvider.h"
#import "RKXMLReaderSerialization.h"
#import <RKManagedObjectRequestOperation.h>
#import "NSDictionary+URLAdditions.h"
#import "Direction.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
//    [self getBusRoutes];
    
    [self getBusStops:@"76" direction:[Direction EastBound]];
    
    
//    [self getStuffWithKeypath:BUSSTOPSKEYPATH url:BUSSTOPSURL params:@{@"rt":@"76",@"dir":@"eastbound"} apiKey:API_KEY success:^(NSArray *results) {
//        NSLog(@"results: %@", [results description]);
//    } failure:^(NSError *error) {
//        NSLog(@"ERROR: %@", [error description]);
//    }];
//    
}

- (void)getBusStops:(NSString *)route direction:(NSString *)direction {
    
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
        self.busStops = [mappingResult array];
    } failure:^(RKObjectRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", [error description]);
    }];
    
    [operation start];

}

- (void)getBusRoutes {
    
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
        self.busRoutes = [mappingResult array];
    } failure:^(RKObjectRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", [error description]);
    }];
    
    [operation start];
}


//- (void)searchWithTerm:(NSString *)searchTerm success:(void (^)(NSArray *))success failure:(void (^)(NSError *))failure {
- (NSArray *)getStuffWithKeypath:(NSString *)keypath url:(NSString *)url params:(NSDictionary *) params apiKey:(NSString *) apiKey success:(void (^)(NSArray *results))success failure:(void (^)(NSError *error))failure {
    
    [RKMIMETypeSerialization registerClass:[RKXMLReaderSerialization class] forMIMEType:RKMIMETypeTextXML];
    
    RKMapping *mapping = [MappingProvider busStopMapping];
    RKResponseDescriptor *responseDescrptor = [RKResponseDescriptor
                                               responseDescriptorWithMapping:mapping
                                               method:RKRequestMethodGET
                                               pathPattern:nil
                                               keyPath:keypath
                                               statusCodes:RKStatusCodeIndexSetForClass(RKStatusCodeClassSuccessful)];
    
    
    NSString *urlWithParams = [NSString stringWithFormat:@"%@%@key=%@", url, [params stringByAppendingQueryParameters], apiKey];
    NSURLRequest *request =  [NSURLRequest requestWithURL:[NSURL URLWithString:urlWithParams]];
    
    
    RKObjectRequestOperation *operation = [[RKObjectRequestOperation alloc] initWithRequest:request responseDescriptors:@[responseDescrptor]];
    
    [operation setCompletionBlockWithSuccess:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult) {
        NSLog(@"result array: %@", [[mappingResult firstObject] description]);
        success([mappingResult array]);
    } failure:^(RKObjectRequestOperation *operation, NSError *error) {
        failure(error);
    }];
    
    [operation start];
    
    return nil;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end