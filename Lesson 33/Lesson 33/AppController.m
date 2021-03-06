//
//  AppController.m
//  Lesson 33
//
//  Created by Lucas Derraugh on 3/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppController.h"

@implementation AppController

- (IBAction)activateSheet:(id)sender {
    NSBeginAlertSheet(@"This is an alert",
                      @"OK",
                      @"Cancel", 
                      @"Other Button", 
                      [[NSApp delegate] window],
                      self,
                      @selector(sheetDidEnd:resultCode:contextInfo:), 
                      NULL,
                      NULL, 
                      @"This is the message for the alert");
}

- (void)sheetDidEnd:(NSWindow *)sheet resultCode:(NSInteger)resultCode contextInfo:(void *)contextInfo {
    if (resultCode == NSAlertDefaultReturn) {
        NSLog(@"OK");
    }
}

@end
