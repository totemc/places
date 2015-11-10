//
//  PlacesInfo.m
//  places
//
//  Create dictionary to assign to instance variables for place object
//
//  Created by Adrian Rodriguez on 11/5/15.
//  Copyright © 2015 totemc. All rights reserved.
//

#import "PlacesInfo.h"

// Assign constants
NSString *const kPlace = @"place";
NSString *const kDescription = @"description";
NSString *const kCost = @"cost";
NSString *const kIcon = @"icon";
NSString *const kLargeIcon = @"largeIcon";
NSString *const kBackgroundColor = @"backgroundColor";

@implementation PlacesInfo

// Create custom init method
- (instancetype)init
{
    self = [super init];
    if (self) {
        
        // set up the dictionary
        _place = @[@{kPlace: @"Seattle, Washington",
                     kDescription: @"Seattle is surrounded by water, mountains, and evergreen forests, and encompasses thousands of acres of parkland. It's home to a thriving tech industry, with Microsoft and Amazon.com headquarted in its metropolitan area.",
                     kCost: @"placeholder",
                     kIcon: @"seattle.png",
                     kLargeIcon: @"seattleLarge.png",
                     kBackgroundColor: @{@"red":@231.0, @"green":@79.0, @"blue":@108.0, @"alpha":@1.0},
                     },
                   @{kPlace: @"New York City, New York",
                     kDescription: @"Home to the Empire State building, Times Square, Statue of Liberty, and more iconic sites, New York City is a fast-paced, globally influental center of art, culture, fashion, and finance. Don't forget about the food, where pizza reigns supreme.",
                     kCost: @"placeholder",
                     kIcon: @"nyc.png",
                     kLargeIcon: @"nycLarge.png",
                     kBackgroundColor: @{@"red":@90.0, @"green":@180.0, @"blue":@118.0, @"alpha":@1.0}
                     },
                   @{kPlace: @"San Diego, California",
                     kDescription: @"San Diego is a city on the Pacific coast of California known for its beaches, parks, and warm climate. Immense Balboa Park is the site of the famous San Diego Zoo, as well as numerous art galleries, artist studios, museums, gardens, and comic-con.",
                     kCost: @"placeholder",
                     kIcon: @"sd.png",
                     kLargeIcon: @"sdLarge.png",
                     kBackgroundColor: @{@"red":@61.0, @"green":@138.0, @"blue":@179, @"alpha":@1.0}
                     },
                   @{kPlace: @"Austin, Texas",
                     kDescription: @"Austin, on the eastern edge of Texas Hill Country, is not only the state capital, but lays claim to being the \"live music capital of the world\". It's also a center for film and home to the University of Texas. It's abundant parks and lakes are popular for hiking, swimming, boating and more.",
                     kCost: @"placeholder",
                     kIcon: @"austin.png",
                     kLargeIcon: @"austinLarge.png",
                     kBackgroundColor: @{@"red":@255.0, @"green":@229.0, @"blue":@144.0, @"alpha":@1.0}
                     },
                   @{kPlace: @"Miami, Florida",
                     kDescription: @"Miami, at Florida's southeastern tip, is a vibrant city whose Cuban influence is reflected in the cafes and cigar shops that line Calle Ocho in Little Havana. Miami Beach, on barrier islands across the waters of Biscayne Bay, is home to glamorous South Beach, famed for its nightclubs and art deco buildings.",
                     kCost: @"placeholder",
                     kIcon: @"miami.png",
                     kLargeIcon: @"miamiLarge.png",
                     kBackgroundColor: @{@"red":@249.0, @"green":@140.0, @"blue":@83.0, @"alpha":@1.0}
                     }
                   ];
    }
    return self;
}

@end
