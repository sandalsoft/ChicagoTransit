//
//  ViewController.h
//  ChicagoTransit
//
//  Created by Eric Nelson on 10/1/13.
//  Copyright (c) 2013 Sandalsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, copy) NSArray *busRoutes;
@property (nonatomic, copy) NSArray *busStops;

-(void)getBusRoutes;
-(void)getBusStops:(NSString *)route direction:(NSString *)direction;

@end
