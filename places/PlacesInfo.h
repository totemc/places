//
//  PlacesInfo.h
//  places
//
//  Contains dictionaries and arrays of information for each location
//
//  Created by Adrian Rodriguez on 11/5/15.
//  Copyright © 2015 totemc. All rights reserved.
//

#import <Foundation/Foundation.h>

// declare extern constants so our imports know they exist and can be accessed from our implementation file
extern NSString *const kPlace;
extern NSString *const kDescription;
extern NSString *const kCost;
extern NSString *const kIcon;
extern NSString *const kLargeIcon;
extern NSString *const kBackgroundColor;

@interface PlacesInfo : NSObject

@property (nonatomic, strong) NSArray *place;

@end
