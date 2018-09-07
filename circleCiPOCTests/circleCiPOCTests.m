//
//  circleCiPOCTests.m
//  circleCiPOCTests
//
//  Created by Jerry Shi on 2018-09-06.
//  Copyright © 2018 Jerry Shi. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface circleCiPOCTests : XCTestCase

@property ViewController *viewControllerTest;

@end

@implementation circleCiPOCTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    _viewControllerTest = [[ViewController alloc]init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testStringNotNil {
    [_viewControllerTest stringChange];
    NSString *vcString = _viewControllerTest.testString;
    XCTAssertNotNil(vcString);
    
}

//- (void)testStringEqual {
//    NSString *expectedString = @"hola";
//    [_viewControllerTest stringChange];
//    NSString *vcString = _viewControllerTest.testString;
//    XCTAssertEqual(expectedString, vcString);
//}


@end
