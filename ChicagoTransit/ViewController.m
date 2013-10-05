//
//  ViewController.m
//  ChicagoTransit
//
//  Created by Eric Nelson on 10/1/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import "ViewController.h"
#import "XMLDictionary.h"
#import <AFNetworking/AFNetworking.h>
#import <AFNetworking/AFHTTPRequestOperationManager.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self doStuff];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (void)doStuff {
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
//    manager.responseSerializer = [AFXMLParserResponseSerializer serializer];
    [manager GET:@"http://www.ctabustracker.com/bustime/api/v1/getroutes"
      parameters:@{@"key":@"L8AhtAaqytXUu3tjDxsjyThrQ"}
         success:^(AFHTTPRequestOperation *operation, id responseObject) {
             XMLDictionaryParser *xmlParser = [[XMLDictionaryParser alloc] init];
             
             NSDictionary *data = [NSDictionary dictionaryWithDictionary:[xmlParser dictionaryWithData:responseObject]];
             NSLog(@"XML: %@", [data description] );
       } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            NSLog(@"Error: %@", error);
       }];
}


@end