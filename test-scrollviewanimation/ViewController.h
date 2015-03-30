//
//  ViewController.h
//  test-scrollviewanimation
//
//  Created by Hoang Pham on 3/23/15.
//  Copyright (c) 2015 Hoang Pham. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
  IBOutlet UIView *_header;
	IBOutlet UIScrollView *_scroll;
	
	IBOutlet NSLayoutConstraint *_scrollViewTopConstraint;
}

- (IBAction)sortButtonTapped:(id)sender;

@end

