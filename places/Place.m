//
//  Place.m
//  places
//
//  Created by Adrian Rodriguez on 11/5/15.
//  Copyright © 2015 totemc. All rights reserved.
//

#import "Place.h"
#import "PlacesInfo.h"

@implementation Place

// Create new init that initializes object with specific index
- (instancetype)initWithIndex:(NSUInteger)index
{
    self = [super init];
    if (self) {
        PlacesInfo *placesInfo = [[PlacesInfo alloc]init];
        NSArray *place = placesInfo.place;
        
        // This line is where we plug in our index when we loop through the array
        NSDictionary *placeDictionary = place[index];
        
        _placePlace = [placeDictionary objectForKey:kPlace];
        _placeDescription = [placeDictionary objectForKey:kDescription];
        _placeCost = [placeDictionary objectForKey:kCost];
        
        NSString *iconName = [placeDictionary objectForKey:kIcon];
        NSString *largeIconName = [placeDictionary objectForKey:kLargeIcon];
        
        _placeIcon = [UIImage imageNamed:iconName];
        _placeIconLarge = [UIImage imageNamed:largeIconName];
        
        NSDictionary *colorDictionary = [placeDictionary objectForKey:kBackgroundColor];
        _backgroundColor = [self rgbColorFromDictionary:colorDictionary];
        
        
    }
    return self;
}

// converts strings to CGFloats and returns a UIColor
- (UIColor *)rgbColorFromDictionary:(NSDictionary *)colorDictionary {
    CGFloat red = [[colorDictionary objectForKey:@"red"] doubleValue];
    CGFloat green = [[colorDictionary objectForKey:@"green"] doubleValue];
    CGFloat blue = [[colorDictionary objectForKey:@"blue"] doubleValue];
    CGFloat alpha = [[colorDictionary objectForKey:@"alpha"] doubleValue];
    
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
}


@end
