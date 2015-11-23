//
//  KVCCustom.m
//  Custom Collection Operator
//
//  Created by Anthony Cargile on 11/23/15.
//  Copyright © 2015 Limber Logic. All rights reserved.
//

#import "NSArray+KVCCustom.h"

@implementation NSArray(KVCCustom)

/**
 * Here's where the real magic happens: apparently KVC words by blindly forwarding to messages
 * with the format {operator}ForKeyPath: within the class. Package custom operators as an 
 * NSArray/NSSet category and voila...
 */
- (NSString *) abbreviationForKeyPath:(NSString*)kp {
    NSMutableString *ret = [[NSMutableString alloc] initWithString:@""];
    
    for (id key in self) {
        [ret appendString:[NSString stringWithFormat:@"%c", [[key valueForKey:kp] characterAtIndex:0]]];
    }
    
    return (NSString*)ret;
}

@end
