//
//  ViewController.m
//  another exp
//
//  Created by Sathish Chinniah on 04/09/15.
//  Copyright (c) 2015 Sathish Chinniah. All rights reserved.
//
#import "ViewController.h"
//
//@interface ViewController () {
//    _Bool isShowingTF;
//    UIBarButtonItem *addButton;
//    
//}
//
//@end
//
//@implementation ViewController
//@synthesize tabView;
//@synthesize txtField;
//
//
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    isShowingTF = NO;
//    addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addButtonPressed:)];
//    
//    self.navigationItem.rightBarButtonItem = addButton;
//    
//    txtField.hidden = YES;
//    
//}
//- (void)addButtonPressed:(id)sender
//{
//    
//    if (isShowingTF) {
//        txtField.hidden = YES;
//    } else {
//        txtField.hidden = NO;
//    }
//    isShowingTF = ! isShowingTF;
//}
//
//
//@end


@interface ViewController () {
    
    UIBarButtonItem *addButton;
    NSString *GettouchStr;
}

@end

@implementation ViewController
@synthesize tabView;
@synthesize txtField;



- (void)viewDidLoad {
    [super viewDidLoad];
    
    addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addButtonPressed:)];
    self.navigationItem.rightBarButtonItem = addButton;
    txtField.hidden = YES;
    
    GettouchStr=@"hidden";
    
}

- (void)addButtonPressed:(id)sender
{
    if ([GettouchStr isEqualToString:@"hidden"])
    {
        
        txtField.alpha = 0;
        [UIView animateWithDuration:1.f delay:0.f options:UIViewAnimationOptionCurveEaseIn animations:^{
            txtField.alpha = 0;
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:1.f delay:0.f options:UIViewAnimationOptionCurveEaseInOut animations:^{
                txtField.alpha = 1;
                txtField.hidden = NO;
                GettouchStr=@"UNhidden";
            } completion:nil];
        }];
        
        
        
        
        
    }
    else
    {
        txtField.alpha = 1;
        [UIView animateWithDuration:1.f delay:0.f options:UIViewAnimationOptionCurveEaseIn animations:^{
            txtField.alpha = 1;
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:1.f delay:0.f options:UIViewAnimationOptionCurveEaseInOut animations:^{
                txtField.alpha = 0;
                txtField.hidden = YES;
                GettouchStr=@"hidden";
            } completion:nil];
        }];
        
        
        
        
        
        
    }
    
    
}@end