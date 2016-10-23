//
//  ViewController.h
//  ThingsToDo
//
//  Created by SWUComputer on 2016. 10. 22..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *thingInfo;
@property (strong, nonatomic) IBOutlet UITextField *thingText;
@property (strong, nonatomic) IBOutlet UILabel *dateInfo;
@property (strong, nonatomic) IBOutlet UIDatePicker *picker;

- (IBAction)saveButton:(UIButton *)sender;

- (IBAction)getDateThing:(UIButton *)sender;
-(BOOL) textFieldShouldReturn:(UITextField*)textField;

@end

