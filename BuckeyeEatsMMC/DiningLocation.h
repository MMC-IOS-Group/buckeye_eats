//
//  DiningLocation.h
//  BuckeyeEatsMMC
//
//  Created by Alane Suhr on 18/2/13.
//  Copyright (c) 2013 Alane Suhr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DiningLocation : NSObject

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *address;
@property (nonatomic, retain) NSArray *startTimes;
@property (nonatomic, retain) NSArray *endTimes;
@property int daysOpen;

- (id)initWithName:(NSString *)inputName withAddress:(NSString *)inputAddress  withDaysOpen:(int)inputDaysOpen;
- (void)setStartTimes:(NSArray *)startTimes;
- (void)setEndTimes:(NSArray *)endTimes;

@end
