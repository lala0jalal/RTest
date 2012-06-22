//
//  unitTestTests.m
//  unitTestTests
//
//  Created by lala jalal on 12-06-22.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "unitTestTests.h"
#import "City.h"

@implementation unitTestTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}


- (void)testCity {
    City *aCity = [[[City alloc] init] autorelease];
    NSString *originalName = @"New York";
    NSMutableString *cityName = [NSMutableString stringWithString:originalName];
    [aCity setName:cityName];
    STAssertTrue([[aCity name] isEqualToString:originalName],@"name must match");
    [cityName appendString:@"blabla"];
    STAssertEqualObjects(originalName, [aCity name],@"names must match");
}

- (void)testCityPersons {
    City *aCity = [[[City alloc] init] autorelease];
    [aCity setName:@"NYC"];
    City *anotherCity = [[[City alloc] init] autorelease];
    [anotherCity setName:@"Montreal"];
    
    NSMutableArray* persons = [NSMutableArray array];
    
    for (int i =0; i < 10; i++) {
        NSString *person = [NSString stringWithFormat:@"Person %d",i];
        [persons addObject:person];
    }
    
    [aCity setPersons:persons];
    
    [persons removeAllObjects];
    for (int i =0; i < 20; i++) {
        NSString *person = [NSString stringWithFormat:@"Other Person %d",i];
        [persons addObject:person];
    }
    [anotherCity setPersons:persons];
    
    
    STAssertTrue([[aCity persons] count] == 10,@"Must be 10");
    STAssertTrue([[anotherCity persons] count] == 20,@"Must be 20");
}

@end
