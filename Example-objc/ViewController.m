//
//  ViewController.m
//  Example-objc
//
//  Created by Paul-Emmanuel on 20/10/16.
//  Copyright © 2016 RStudio. All rights reserved.
//

#import "ViewController.h"

#import "RSColorPicker.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, weak) IBOutlet UIButton *sortButton;
@property (nonatomic, weak) IBOutlet UITableView *tableView;

@property (nonatomic, strong) NSArray<UIColor *> *colors;
@property (nonatomic, strong) NSArray<UIColor *> *filteredColors;
@property (nonatomic) BOOL isSorted;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.colors = [RSColorGenerator colorsWithCount:50];
    self.filteredColors = [self.colors sortedArrayUsingDescriptors:@[[[NSSortDescriptor alloc] initWithKey:@"hue" ascending:NO]]];
    self.isSorted = YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.filteredColors.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    [cell.contentView.subviews makeObjectsPerformSelector: @selector(removeFromSuperview)];
    cell.contentView.backgroundColor = self.filteredColors[indexPath.row];
    
    UILabel *hue = [[UILabel alloc] initWithFrame:cell.contentView.frame];
    hue.text = [NSString stringWithFormat:@"hue: %f (%lu)", self.filteredColors[indexPath.row].hue, (unsigned long)(self.filteredColors[indexPath.row].hue * 360)];
    hue.textColor = [UIColor whiteColor];
    
    [cell.contentView addSubview:hue];
    
    return cell;
}


- (IBAction)sortButtonTouchUp:(id)sender {
    if (self.isSorted) {
        self.filteredColors = self.colors;
        [self.sortButton setTitle:@"Sort" forState:UIControlStateNormal];
    } else {
        self.filteredColors = [self.colors sortedArrayUsingDescriptors:@[[[NSSortDescriptor alloc] initWithKey:@"hue" ascending:NO]]];
        [self.sortButton setTitle:@"Shuffle" forState:UIControlStateNormal];
    }
    self.isSorted = !self.isSorted;
    [self.tableView reloadData];
}


@end
