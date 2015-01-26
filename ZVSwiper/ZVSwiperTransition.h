//
//  ZVSwiper.h
//  CustomSegue
//
//  Created by M. David Minnigerode on 1/25/15.
//
//

/**
 
 An Animated Transitioning impl that forces nav controler PUSH and POP operations to presents views w/o any overlapping.

 
 */
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ZVSwiperTransition : NSObject<UIViewControllerAnimatedTransitioning>

@property (nonatomic) UINavigationControllerOperation pushOrPop;

@end
