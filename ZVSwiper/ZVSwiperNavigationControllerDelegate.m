//
//  ZVSwiperNavigationControllerDelegate.m
//  CustomSegue
//
//  Created by M. David Minnigerode on 1/25/15.
//
//

#import "ZVSwiperNavigationControllerDelegate.h"
#import "ZVSwiperTransition.h"
#import <UIKit/UIKit.h>

@implementation ZVSwiperNavigationControllerDelegate



-(id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC{
    ZVSwiperTransition * swiper = [[ZVSwiperTransition alloc] init];
    swiper.pushOrPop = operation;
    return swiper;
    
}



@end
