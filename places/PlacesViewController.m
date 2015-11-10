//
//  ViewController.m
//  places
//
//  Initial view controller for our app, has the code to relay sender information to our next view.
//
//  Created by Adrian Rodriguez on 11/5/15.
//  Copyright © 2015 totemc. All rights reserved.
//

#import "PlacesViewController.h"
#import "PlacesDetailViewController.h"
#import "Place.h"

@interface PlacesViewController ()

@end

@implementation PlacesViewController

// Loop through collection and assign to ImageViews
- (void)viewDidLoad {
    [super viewDidLoad];
    
    for (NSUInteger index = 0; index < self.placesImageView.count; index++) {
        Place *place = [[Place alloc] initWithIndex:index];
        
        UIImageView *placeImageView = self.placesImageView[index];
        
        placeImageView.image = place.placeIcon;
        placeImageView.backgroundColor = place.backgroundColor;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

// Set all outlets to data from initialized object
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqual:@"showPlaceDetail"]){
        
        
        UIImageView *placeImageView = (UIImageView *)[sender view];
        
        if ([self.placesImageView containsObject:placeImageView]) {
            NSUInteger index = [self.placesImageView indexOfObject:placeImageView];
            
            PlacesDetailViewController *placeDetailController = (PlacesDetailViewController *)segue.destinationViewController;
            
            placeDetailController.place = [[Place alloc] initWithIndex:index];
        }
        
        
    }
    
}

// Link to tap gesture
- (IBAction)showPlaceDetail:(id)sender {
    
    [self performSegueWithIdentifier:@"showPlaceDetail" sender:sender];
}

@end
