//
//  GenerateOneColorViewController.m
//  RSColorPicker
//
//  Created by Paul-Emmanuel on 20/10/16.
//  Copyright © 2016 RStudio. All rights reserved.
//

#import "GenerateOneColorViewController.h"

#import "RVSColorPicker.h"

@interface GenerateOneColorViewController ()
@property (weak, nonatomic) IBOutlet UIButton *generateColorButton;

@end

@implementation GenerateOneColorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.generateColorButton.backgroundColor = [RVSColorGenerator color];
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
- (IBAction)generateColorButtonTouchUp:(id)sender {
    self.generateColorButton.backgroundColor = [RVSColorGenerator color];
}

@end
