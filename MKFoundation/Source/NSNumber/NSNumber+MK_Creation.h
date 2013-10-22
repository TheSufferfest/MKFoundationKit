//
//  NSNumber+MK_Creation.h
//
//  Created by Michal Konturek on 02/07/2013.
//  Copyright (c) 2013 Michal Konturek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNumber (MK_Creation)

+ (instancetype)createFrom:(NSNumber *)number;

- (NSDecimalNumber *)decimalNumber;

@end
