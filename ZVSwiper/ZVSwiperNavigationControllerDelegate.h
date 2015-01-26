//
//  ZVSwiperNavigationControllerDelegate.h
//  CustomSegue
//
//  Created by M. David Minnigerode on 1/25/15.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/*!
 
 Simple nave controller delegate that creates a SwiperTransistion for any push/pop operations.
 
 Just create an instance of this in IB and link to your nav view controller's delegate.
 
 */
@interface ZVSwiperNavigationControllerDelegate : NSObject <UINavigationControllerDelegate>
@end
