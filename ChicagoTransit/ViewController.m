//
//  ViewController.m
//  ChicagoTransit
//
//  Created by Eric Nelson on 10/1/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import "ViewController.h"




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