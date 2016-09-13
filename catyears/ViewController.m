//
//  ViewController.m
//  catyears
//
//  Created by Student P_05 on 11/09/16.
//  Copyright © 2016 felix. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    screenwidth=[[UIScreen mainScreen]bounds].size.width;
    screenheight=[[UIScreen mainScreen]bounds].size.height;
    
    textfieldwidth=screenwidth-(2*kHorizontalpadding);
    mytextfield = [[UITextField alloc]initWithFrame:CGRectMake(20, 60, 370, 50)];
    [mytextfield setPlaceholder:@"enter the value"];
    mytextfield.backgroundColor = [UIColor whiteColor];
    [mytextfield setBorderStyle:UITextBorderStyleBezel];
    [self.view addSubview:mytextfield];
    
    calculatebutton=[[UIButton alloc]initWithFrame:CGRectMake(75, 130, 100, 50)];
    calculatebutton.backgroundColor=[UIColor brownColor];
    
    [calculatebutton addTarget:self action:@selector(handlecal) forControlEvents:(UIControlEventTouchUpInside)];
    [calculatebutton setTitle:@"calculate" forState:UIControlStateNormal];
    [self.view addSubview:calculatebutton];
    
    clearbutton = [[UIButton alloc]initWithFrame:CGRectMake(250, 130, 100, 50)];
    clearbutton.backgroundColor=[UIColor blackColor];
   [clearbutton addTarget:self action:@selector(handleclear)forControlEvents:UIControlEventTouchUpInside];
    [clearbutton setTitle:@"Clear" forState:UIControlStateNormal];
    [self.view addSubview:clearbutton];
    
    displaylabelwidth = screenwidth-(2*kHorizontalpadding);
    
    displaylabel = [[UILabel alloc]initWithFrame:CGRectMake(20, 350, 370, 50)];
    displaylabel.textAlignment= NSTextAlignmentLeft;
    displaylabel.font = [UIFont systemFontOfSize:30];
    displaylabel.layer.borderWidth=3;
    
    displaylabel.textColor=[UIColor blackColor];
    [displaylabel setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:displaylabel];
    
    
}
-(void)handlecal{
    [self displaycat:mytextfield.text ];
}
- (void)handleclear{
    mytextfield.text=@"";
}
-(void)displaycat:(NSString *)content {
    int intAge = content.intValue;
    if(intAge>0&&intAge<100) {
        NSString *currentValueString = mytextfield.text;
        
        float currentValueInt = currentValueString.floatValue;
        
        currentValueInt = currentValueInt/7;
        
        NSString *newValueString = [NSString stringWithFormat:@"Catyear is:%0.02f ",currentValueInt];
        
        displaylabel.text = newValueString;
    }
    
    else {
        displaylabel.text=@"Please Enter the Age";
        

}
}

-(BOOL)validtext:(UITextField *)textField {
        NSString *text = textField.text;
        [self displaycat:text];
        [textField resignFirstResponder];
        return YES;
    }



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
    


