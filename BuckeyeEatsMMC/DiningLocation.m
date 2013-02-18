//
//  DiningLocation.m
//  BuckeyeEatsMMC
//
//  Created by Alane Suhr on 18/2/13.
//  Copyright (c) 2013 Alane Suhr. All rights reserved.
//

#import "DiningLocation.h"

@implementation DiningLocation

@synthesize name, address, daysOpen;

enum {
    kMonday = 0,
    kTuesday = 1 << 0,
    kWednesday = 2 << 0,
    kThursday = 3 << 0,
    kFriday = 4 << 0,
    kSaturday = 5 << 0,
    kSunday = 6 << 0,
    kAll = kMonday | kTuesday | kWednesday | kThursday | kFriday | kSaturday | kSunday,
    kWeekdays = kMonday | kTuesday | kWednesday | kThursday | kFriday,
};

- (id)initWithName:(NSString *)inputName withAddress:(NSString *)inputAddress  withDaysOpen:(int)inputDaysOpen {
    
    self.name = inputName;
    self.address = inputAddress;
    self.daysOpen = inputDaysOpen;
    
    return self;
}

- (void)setStartTimes:(NSArray *)startTimes {
    
}

- (void)setEndTimes:(NSArray *)endTimes {
    
}

@end
