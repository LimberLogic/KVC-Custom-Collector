//
//  AppDelegate.h
//  Custom Collection Operator
//
//  Created by Anthony Cargile on 11/23/15.
//  Copyright © 2015 Limber Logic. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "KVCWord.h"
#import "NSArray+KVCCustom.h"

#define idiotReminder(error) \
    NSAlert *_errorAlert = [[NSAlert alloc] init]; \
    [_errorAlert setMessageText:[NSString stringWithFormat:@"Error: %@", error]]; \
    [_errorAlert runModal];

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    IBOutlet NSTextField *input;
}

- (IBAction)test:(id)sender;

@property NSArray *words;

@end

