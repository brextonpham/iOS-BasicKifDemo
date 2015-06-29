//
//  KifTests.m
//  BasicKifDemo
//
//  Created by Brexton Pham on 6/29/15.
//  Copyright (c) 2015 Brexton Pham. All rights reserved.
//

#import "KifTests.h"

@implementation KifTests

- (void)testLogin {
    [self navigateToLogin];
    [tester enterText:@"myusername" intoViewWithAccessibilityLabel:@"Username Field"];
    [tester enterText:@"mypassword" intoViewWithAccessibilityLabel:@"Password Field"];
    [tester tapViewWithAccessibilityLabel:@"Submit Button"];
    
    //back on main view
    [tester waitForViewWithAccessibilityLabel:@"Login Button"];
}

- (void)navigateToLogin {
    [tester waitForTappableViewWithAccessibilityLabel:@"Login Button"];
    [tester tapViewWithAccessibilityLabel:@"Login Button"];
    [tester waitForViewWithAccessibilityLabel:@"Username Field"];
}

- (void)testSignOut {
    
}

@end
