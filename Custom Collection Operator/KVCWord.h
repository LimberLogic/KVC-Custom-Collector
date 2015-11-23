//
//  KVCMessage.h
//  Custom Collection Operator
//
//  Created by Anthony Cargile on 11/23/15.
//  Copyright © 2015 Limber Logic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KVCWord : NSObject

+ (instancetype)instanceWithWord:(NSString*)message;

@property NSString *word;

@end
