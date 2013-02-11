//
//  FoodListTableView.h
//  BuckeyeEatsMMC
//
//  Created by Alane Suhr on 11/2/13.
//  Copyright (c) 2013 Alane Suhr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FoodListTableView : UITableView <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, retain) NSArray *foodNames;

- (void)loadFood;

@end
