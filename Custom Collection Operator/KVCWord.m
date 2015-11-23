//
//  KVCMessage.m
//  Custom Collection Operator
//
//  Created by Anthony Cargile on 11/23/15.
//  Copyright © 2015 Limber Logic. All rights reserved.
//

#import "KVCWord.h"

@implementation KVCWord

+ (instancetype)instanceWithWord:(NSString*)word {
    KVCWord *ret = [[KVCWord alloc] init];
    ret.word = word;
    return ret;
}

@end
