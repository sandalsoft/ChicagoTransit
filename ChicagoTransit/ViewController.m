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

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self getBusRoutes];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    } failure:^(RKObjectRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", [error description]);
    }];
    
    [operation start];
    
//    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
//    [manager GET:@"http://www.ctabustracker.com/bustime/api/v1/getroutes"
//      parameters:@{@"key":API_KEY}
//         success:^(AFHTTPRequestOperation *operation, id responseObject) {
//
//             NSDictionary *data = [NSDictionary dictionaryWithXMLData:responseObject];
//             NSLog(@"XML: %@", [data description] );
//       } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//            NSLog(@"Error: %@", error);
//       }];
}


@end