//
//  ViewController.h
//  places
//
//  Decleration of our IBOutletCollection for our indexing.
//
//  Created by Adrian Rodriguez on 11/5/15.
//  Copyright © 2015 totemc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlacesViewController : UIViewController

// Create our Collection
@property (strong, nonatomic)IBOutletCollection(UIImageView) NSArray *placesImageView;


@end

