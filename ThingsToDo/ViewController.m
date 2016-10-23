//
//  ViewController.m
//  ThingsToDo
//
//  Created by SWUComputer on 2016. 10. 22..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import "ViewController.h"
#import "ThingsToDoViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize thingInfo;
@synthesize thingText;
@synthesize dateInfo;
@synthesize picker;


- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}



- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    ThingsToDoViewController *vc = [segue destinationViewController];
    
  NSString *saved = [NSString stringWithFormat:@"%@",thingInfo.text];
    NSString *limit = dateInfo.text;
    vc.info = [limit stringByAppendingFormat:@"까지 할 일\n\n %@",saved];
    
    
}


- (IBAction)saveButton:(UIButton *)sender {
        NSArray *saved;
        saved = [NSArray arrayWithObjects:thingInfo.text,nil];
    NSLog(@"%@",saved);
    
}

- (IBAction)getDateThing:(UIButton *)sender {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    self.dateInfo.text = [dateFormatter stringFromDate: self.picker.date];
    
    self.thingInfo.text = [NSString stringWithFormat:@"%@",thingText.text];
    
    
    
    
}
@end
