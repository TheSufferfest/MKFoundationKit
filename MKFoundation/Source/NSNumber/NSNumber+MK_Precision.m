//
//  NSNumber+MK_Precision.m
//
//  Created by Michal Konturek on 02/07/2013.
//  Copyright (c) 2013 Michal Konturek. All rights reserved.
//

#import "NSNumber+MK_Precision.h"

#import "NSNumber+MK_Creation.h"

@implementation NSNumber (MK_Precision)

+ (NSDecimalNumberHandler *)decimalNumberHandlerWithScale:(short)scale {
    return [NSDecimalNumberHandler
            decimalNumberHandlerWithRoundingMode:NSRoundPlain
            scale:scale
            raiseOnExactness:NO
            raiseOnOverflow:NO
            raiseOnUnderflow:NO
            raiseOnDivideByZero:NO
            ];
}

- (instancetype)roundedAsMoney {
    return [self roundedWithPrecision:2];
}

- (instancetype)roundedWithPrecision:(short)precision {
    NSAssert(precision >= 0, @"Precision cannot be negative.");
    NSDecimalNumberHandler *behavior = [NSDecimalNumber decimalNumberHandlerWithScale:precision];
    return [[self decimalNumber] decimalNumberByRoundingAccordingToBehavior:behavior];
}

@end
