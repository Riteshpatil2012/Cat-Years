//
//  ViewController.h
//  catyears
//
//  Created by Student P_05 on 11/09/16.
//  Copyright © 2016 felix. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kHorizontalpadding 30.0
#define kverticalpading 20.0
#define kAllelementpadding 50.0

@interface ViewController : UIViewController <UITextViewDelegate>
{
    UIButton *clearbutton;
    CGFloat clearbuttonXcoordinate;
    
    UIButton *calculatebutton;
    CGFloat calculatebuttonwidth;
    CGFloat calculatebuttonYcoordinate;
    
    UITextField *mytextfield;
    CGFloat textfieldwidth;
    
    UILabel *displaylabel;
    CGFloat displaylabelwidth;
    
    CGFloat displayYcordinate;
    
    CGFloat screenwidth;
    CGFloat screenheight;
    
}


@end

