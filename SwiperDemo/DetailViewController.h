//
//  DetailViewController.h
//  SwiperDemo
//
//  Created by M. David Minnigerode on 1/25/15.
//  Copyright (c) 2015 M. David Minnigerode. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

