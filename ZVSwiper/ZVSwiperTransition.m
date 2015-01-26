//
//  ZVSwiper.m
//  CustomSegue
//
//  Created by M. David Minnigerode on 1/25/15.
//
//

#import "ZVSwiperTransition.h"

NSTimeInterval kDuration = 0.25;
CGFloat kDamping = 0.65;
CGFloat kInitSpringSpeed = 0.6;


@implementation ZVSwiperTransition

-(NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext{
    return kDuration;
}



-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext{
    
    UIView * from =  [transitionContext viewForKey:UITransitionContextFromViewKey];
    UIView * to =  [transitionContext viewForKey:UITransitionContextToViewKey];
    UIView * container = [transitionContext containerView];
    
    // clear any existing transforms.
    CATransform3D  t = CATransform3DIdentity;
    to.layer.transform = t;
    from.layer.transform = t;
    
    float toWidth = to.frame.size.width;
    
    // setup location of views AND calc the correct transform
    switch (self.pushOrPop) {
        case UINavigationControllerOperationPop:
            // from is already in the correct spot.
            // add the TO view to the left of the from frame
            to.frame = CGRectApplyAffineTransform(from.frame, CGAffineTransformMakeTranslation(-toWidth, 0));
            t = CATransform3DMakeTranslation(toWidth, 0, 0);
            break;
        case UINavigationControllerOperationPush:
            // put the TO view off to the right.
            to.frame = CGRectApplyAffineTransform(from.frame, CGAffineTransformMakeTranslation(toWidth, 0));
            t = CATransform3DMakeTranslation(-toWidth, 0, 0);
            break;
        default:
            break;
    }
    // put the to view onto the container
    [container addSubview:to];
    [UIView animateWithDuration:kDuration
                          delay:0.0
          usingSpringWithDamping:kDamping
          initialSpringVelocity:kInitSpringSpeed
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
        // move the two views.
        to.layer.transform = t;
        from.layer.transform = t;
    } completion:^(BOOL finished) {
        // get rid of the to transform so touch events work
        to.layer.transform = CATransform3DIdentity;
        // ane make sure it stays put.
        to.frame = container.bounds;
        // let everyone know we are done.
        [transitionContext completeTransition:finished];
    }];
    
   
    
    
}


@end
