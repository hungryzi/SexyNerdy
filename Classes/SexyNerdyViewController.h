//
//  SexyNerdyViewController.h
//  SexyNerdy
//
//  Created by Huong Vu on 2/6/11.
//  Copyright 2011 National University of Singapore. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PickupLinesStorage.h"

@interface SexyNerdyViewController : UIViewController {
	IBOutlet UILabel *display;	
	PickupLinesStorage *storage;
}

@end

