//
//  PickupLinesStorage.h
//  SexyNerdy
//
//  Created by Huong Vu on 2/6/11.
//  Copyright 2011 National University of Singapore. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface PickupLinesStorage : NSObject {	
	NSArray *pickupLines;
	//NSString *currentPickupLine;
	//NSUInteger currentIndex;
}

- (NSString *)newPickupLine;

@end
