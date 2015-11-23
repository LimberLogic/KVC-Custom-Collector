//
//  AppDelegate.m
//  Custom Collection Operator
//
//  Created by Anthony Cargile on 11/23/15.
//  Copyright © 2015 Limber Logic. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (IBAction)test:(id)sender {
    // validate
    if(![[self->input stringValue] containsString:@","]) {
        idiotReminder(@"You actually need a comma-delimited list");
        return;
    }
    
    // build objects and push into array
    NSArray *inputWords = [[self->input stringValue] componentsSeparatedByString:@","];
    NSMutableArray *objects = [[NSMutableArray alloc] init];
    for (NSString *word in inputWords)
        [objects addObject:[KVCWord instanceWithWord:word]];
    _words = objects;
    
    // use our custom collection operator (via NSArray+KVCCustom.h) to get the result
    NSString *result = [_words valueForKeyPath:@"@abbreviation.word"];
    
    // display the result
    NSAlert *alert = [[NSAlert alloc] init];
    [alert setMessageText:[NSString stringWithFormat:@"Result: '%@'", result]];
    [alert runModal];
}

// since this is a pretty basic single-purpose utility
- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender {
    return YES;
}

@end
