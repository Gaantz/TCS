//
//  TABLETableViewController.m
//  TSC
//
//  Created by Cristian Palomino Rivera on 10/09/15.
//  Copyright (c) 2015 Cristian Palomino Rivera. All rights reserved.
//

#import "TABLETableViewController.h"

@interface TABLETableViewController ()
@property (strong,nonatomic) NSArray *items;
@end

@implementation TABLETableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _items = @[@"A",@"B",
               @"C",@"D",
               @"E",@"F",
               @"G",@"H",
               @"I",@"J",
               @"K",@"L",
               @"M",@"N",
               @"O",@"P",
               @"Q",@"R",];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_items count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell =
    [tableView dequeueReusableCellWithIdentifier:@"iCell" forIndexPath:indexPath];
    
    cell.textLabel.text = [_items objectAtIndex:indexPath.row];
    
    return cell;
}

@end
