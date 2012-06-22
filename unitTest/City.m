//
//  City.m
//  unitTest
//
//  Created by lala jalal on 12-06-22.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "City.h"

@implementation City

@synthesize name = _name;
@synthesize countryName = _countryName;
@synthesize persons = _persons;

- (void)dealloc {
    [_persons release]; _persons = nil;
    [_name release]; _name= nil;
    [_countryName release]; _countryName = nil;
    [super dealloc];
}

@end
