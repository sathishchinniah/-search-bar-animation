//
//  ViewController.h
//  another exp
//
//  Created by Sathish Chinniah on 04/09/15.
//  Copyright (c) 2015 Sathish Chinniah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITextField *txtField;


@property (strong, nonatomic) IBOutlet UITableView *tabView;



@end

