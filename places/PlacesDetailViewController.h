//
//  PlacesDetailViewController.h
//  places
//
//  Created by Adrian Rodriguez on 11/5/15.
//  Copyright © 2015 totemc. All rights reserved.
//

#import <UIKit/UIKit.h>

// let the file know you will be making a place object
@class Place;

// Link all Storyboard outlets
@interface PlacesDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *placesCoverImage;
@property (weak, nonatomic) IBOutlet UILabel *placeTitle;
@property (weak, nonatomic) IBOutlet UILabel *placeDescription;
@property (weak, nonatomic) IBOutlet UILabel *placeCost;

@property (strong, nonatomic) Place *place;

@end
