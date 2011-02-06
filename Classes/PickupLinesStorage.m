//
//  PickupLinesStorage.m
//  SexyNerdy
//
//  Created by Huong Vu on 2/6/11.
//  Copyright 2011 National University of Singapore. All rights reserved.
//

#import "PickupLinesStorage.h"


@implementation PickupLinesStorage

- (NSArray *)pickupLines
{
	NSLog(@"oh");
	if (pickupLines == nil) 
	{
		NSLog(@"init");
		// Set
		NSString *path = [[NSBundle mainBundle] pathForResource:@"PickupLines" ofType:@"txt"];
		NSString *content = [NSString stringWithContentsOfFile:path encoding:NSUTF16BigEndianStringEncoding error:NULL];
		pickupLines = [[content componentsSeparatedByString:@"\n"] retain];
	}
	NSLog(@"ah");
	return pickupLines;
}

- (NSString *)newPickupLine 
{
	NSLog(@"in2");
	int newIndex = arc4random() % 6;
	//NSLog([NSString stringWithFormat:@"%d" ,newIndex]);
	return [[self pickupLines] objectAtIndex:newIndex];
}

- (void)dealloc {
	[pickupLines release];
	[super dealloc];
}

@end
