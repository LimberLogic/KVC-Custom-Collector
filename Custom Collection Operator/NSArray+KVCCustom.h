//
//  KVCCustom.h
//  Custom Collection Operator
//
//  Created by Anthony Cargile on 11/23/15.
//  Copyright © 2015 Limber Logic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Foundation/NSKeyValueCoding.h>

@interface NSArray(KVCCustom)

- (NSString *) abbreviationForKeyPath:(NSString*)kp;

@end
