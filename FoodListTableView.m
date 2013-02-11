//
//  FoodListTableView.m
//  BuckeyeEatsMMC
//
//  Created by Alane Suhr on 11/2/13.
//  Copyright (c) 2013 Alane Suhr. All rights reserved.
//

#import "FoodListTableView.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@implementation FoodListTableView
@synthesize foodNames;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib {
    self.dataSource = self;
    self.delegate = self;
    
    [self loadFood];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [foodNames count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
        cell.selectionStyle = UITableViewCellStyleDefault;
    }
    
    cell.textLabel.text = [foodNames objectAtIndex:indexPath.row];
    
    return cell;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)loadFood {
    foodNames = [NSArray arrayWithObjects:@"Noco", @"KSA Cafe", nil];
    
    [self reloadData];
}

@end
