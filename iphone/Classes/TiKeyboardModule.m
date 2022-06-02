/**
 * keyboard
 *
 * Created by Clement Blanco
 * Copyright (c) 2018 Your Company. All rights reserved.
 */

#import "TiKeyboardModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"

@implementation TiKeyboardModule

#pragma mark Internal

// This is generated for your module, please do not change it
- (id)moduleGUID
{
	return @"21d70b8f-7c00-49ae-a330-3275f82bfeee";
}

// This is generated for your module, please do not change it
- (NSString *)moduleId
{
	return @"ti.keyboard";
}

#pragma mark Lifecycle

- (void)startup
{
	// This method is called when the module is first loaded
	// You *must* call the superclass
	[super startup];
	NSLog(@"[DEBUG] %@ loaded",self);
}

#pragma Public APIs

- (void)hide:(id)args
{
    [[UIApplication sharedApplication] sendAction:@selector(resignFirstResponder) to:nil from:nil forEvent:nil];
}

@end
