//
//  SexyNerdyViewController.m
//  SexyNerdy
//
//  Created by Huong Vu on 2/6/11.
//  Copyright 2011 National University of Singapore. All rights reserved.
//

#import "SexyNerdyViewController.h"

@implementation SexyNerdyViewController

- (PickupLinesStorage *)storage
{
	if (!storage)
	{
		storage = [[PickupLinesStorage alloc] init];
	}
	return storage;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	
	// We only support single touches, so anyObject retrieves just that touch from touches
	UITouch *touch = [touches anyObject];
	
	// In case of a double tap outside the placard view, update the placard's display string
	if ([touch tapCount] == 2) {
		NSString *line = [[self storage] newPickupLine];
		//NSLog(line);
		[display setText:line];
	}
	return;
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event 
{
	NSLog(@"motion");
	if (event.type == UIEventSubtypeMotionShake) {
		NSString *line = [[self storage] newPickupLine];
		//NSLog(line);
		[display setText:line];
	}
}

-(BOOL)canBecomeFirstResponder {
    return YES;
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self becomeFirstResponder];
}

- (void)viewWillDisappear:(BOOL)animated {
    [self resignFirstResponder];
    [super viewWillDisappear:animated];
}

@end
