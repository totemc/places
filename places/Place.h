//
//  Place.h
//  places
//
//  Create our object
//
//  Created by Adrian Rodriguez on 11/5/15.
//  Copyright © 2015 totemc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Place : NSObject

// Create all properties for object
@property (nonatomic, strong) NSString *placePlace;
@property (nonatomic, strong) NSString *placeDescription;
@property (nonatomic, strong) NSString *placeCost;
@property (nonatomic, strong) UIImage *placeIcon;
@property (nonatomic, strong) UIImage *placeIconLarge;
@property (nonatomic, strong) UIColor *backgroundColor;

// Declare methods
- (UIColor *)rgbColorFromDictionary:(NSDictionary *)colorDictionary;
- (instancetype)initWithIndex:(NSUInteger)index;

@end
