//
//  ViewController.m
//  test-scrollviewanimation
//
//  Created by Hoang Pham on 3/23/15.
//  Copyright (c) 2015 Hoang Pham. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
	BOOL scrollViewInvisible;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	scrollViewInvisible = TRUE;
	
}

- (void)sortButtonTapped:(id)sender
{
	if (scrollViewInvisible)
	{
		[UIView animateWithDuration: 0.2 animations:^
		{
			_scrollViewTopConstraint.constant += _scroll.frame.size.height;
			[self.view layoutIfNeeded];
		}];
		
		scrollViewInvisible = FALSE;
	}
	else
	{
		[UIView animateWithDuration: 0.2 animations:^
		{
			_scrollViewTopConstraint.constant -= _scroll.frame.size.height;
			[self.view layoutIfNeeded];
		}];
		
		scrollViewInvisible = TRUE;
	}
}


@end
