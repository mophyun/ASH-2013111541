//
//  ThingsToDoViewController.m
//  ThingsToDo
//
//  Created by SWUComputer on 2016. 10. 22..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import "ThingsToDoViewController.h"

@interface ThingsToDoViewController ()

@end

@implementation ThingsToDoViewController

@synthesize todayInfo;
@synthesize info;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    todayInfo.text = info;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
