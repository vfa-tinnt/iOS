//
//  NameAndPrice.m
//  demo
//
//  Created by Tin NT on 10/3/13.
//  Copyright (c) 2013 tinnt. All rights reserved.
//

#import "NameAndPrice.h"

@implementation NameAndPrice

- (NSString *) run {
    NSString *result = @" ";
    return result;
}

+ (NSString *) runWithString:(NSString *)foneName andPrice:(NSInteger) fonePrice {
    NSString *result = [NSString stringWithFormat:@"%@  %d", foneName, fonePrice];
    return result;
    
}

- (NSInteger ) getPrice {
    
    return cPrice;

}

- (void) setPrice:(NSInteger) fonePrice {
    
    cPrice = fonePrice;
    
}


@end
