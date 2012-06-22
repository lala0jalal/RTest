//
//  ViewController.m
//  unitTest
//
//  Created by lala jalal on 12-06-22.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "City.h"


@interface ViewController ()

@property (nonatomic, retain) City *myCity;

@end

@implementation ViewController
@synthesize cityNameLabel;
@synthesize countryNameLabel;
@synthesize myCity;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self != nil) {
        myCity = [[City alloc] init];
        [myCity setName:@"London"];
        [myCity setCountryName:@"England"];
    }
    return self;
}

- (void)dealloc {
    [myCity release];
    [cityNameLabel release];
    [countryNameLabel release];
    [super dealloc];
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    [self.cityNameLabel setText:[self.myCity name]];
    [self.countryNameLabel setText:[self.myCity countryName]];
}

- (void)viewDidUnload
{
    [self setCityNameLabel:nil];
    [self setCountryNameLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

@end
