//
//  NSDictionary+MK.h
//
//  Created by Michal Konturek on 11/07/2013.
//  Copyright (c) 2013 Michal Konturek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (MK)

- (NSMutableDictionary *)renameKeysUsingRules:(NSDictionary *)rules;
- (NSMutableDictionary *)dictionaryWithKeys:(NSArray *)keys;

@end
