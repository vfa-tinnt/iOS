//
//  NameAndPrice.h
//  demo
//
//  Created by Tin NT on 10/3/13.
//  Copyright (c) 2013 tinnt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NameAndPrice : NSObject {
    @public
    NSString *cName;
    NSInteger cPrice;
    
}

- (NSString *) run;

+ (NSString *) runWithString:(NSString *)foneName andPrice:(NSInteger) fonePrice;

- (NSInteger ) getPrice;

- (void) setPrice:(NSInteger) fonePrice;


@end
