//
//  demo.h
//  demo
//
//  Created by Tin NT on 10/3/13.
//  Copyright (c) 2013 tinnt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Demo : NSObject {

@public
    NSString *foneName;
    NSInteger price;
    
}

- (NSString *) run;
- (NSString *) runWithString;
- (NSString *) runWithString:(NSString *)cfone andPrice:(NSInteger) cPrice;

@end
