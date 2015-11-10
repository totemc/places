//
//  PlacesDetailViewController.m
//  places
//
//  Created by Adrian Rodriguez on 11/5/15.
//  Copyright © 2015 totemc. All rights reserved.
//

#import "PlacesDetailViewController.h"
#import "Place.h"

@interface PlacesDetailViewController ()

@end

@implementation PlacesDetailViewController

// if place exists, set all properties from object to the VC
- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (self.place) {
        self.placesCoverImage.image = self.place.placeIconLarge;
        self.placesCoverImage.backgroundColor = self.place.backgroundColor;
        self.placeTitle.text = self.place.placePlace;
        self.placeDescription.text = self.place.placeDescription;
        self.placeCost.text = self.place.placeCost;
        
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
