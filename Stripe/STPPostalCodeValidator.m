//
//  STPPostalCodeValidator.m
//  Stripe
//
//  Created by Ben Guo on 4/14/16.
//  Copyright © 2016 Stripe, Inc. All rights reserved.
//

#import "STPPostalCodeValidator.h"
#import "STPCardValidator.h"

@implementation STPPostalCodeValidator

+ (BOOL)stringIsValidPostalCode:(nullable NSString *)string {
    NSUInteger length = [STPCardValidator sanitizedNumericStringForString:string].length;
    return length == 5 || length == 9;
}

@end
