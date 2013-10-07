//
//  demoViewController.m
//  demo
//
//  Created by Tin NT on 10/3/13.
//  Copyright (c) 2013 tinnt. All rights reserved.
//

#import "demoViewController.h"
#import "NameAndPrice.h"
@interface demoViewController ()
@end

@implementation demoViewController

- (IBAction)actionGetFull:(id)sender {
    
    NSString *getName = self.tfName.text;
    NSString *getPrice = self.tfPrice.text;
    self.lbFull.numberOfLines = 0;
    self.lbFull.text = [NSString stringWithFormat:@"%@ %@",getName, getPrice];
    [self.lbFull sizeToFit];
    
}

- (IBAction)actionGetPrice:(id)sender {
    
    NSString *result = self.tfPrice.text;
    self.lbPrice.numberOfLines = 0;
    self.lbPrice.text = result;
    [self.lbPrice sizeToFit];
    [self.tfPrice resignFirstResponder];
    
}
- (IBAction)actionGetName:(id)sender {
    
    
    NSString *result = self.tfName.text;
    
    self.lbName.numberOfLines = 0;
    self.lbName.text = result;
    [self.lbName sizeToFit];
    //self.lbName.lineBreakMode = UILineBreakModeWordWrap;
    
    
    [self.tfName resignFirstResponder];
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.tfName resignFirstResponder];
    [self.tfPrice resignFirstResponder];
    
}



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//    NameAndPrice *info = [[NameAndPrice alloc]init];
//    //info->cName = @"Honda";
//    NSString *strName = [info run];
//    NSString *strNamePrice = [NameAndPrice runWithString:@"Honda" andPrice:1200];
//    NSLog(@"%@",strName);
//    NSLog(@"%@", info);
//    NSLog(@"%@", strNamePrice);
    self.tfPrice.returnKeyType = UIReturnKeyDone;
    
    
      
}

- (BOOL) textFieldShouldReturn:(UITextField *)theTextField {
    [self.tfName resignFirstResponder];
    [self.tfPrice resignFirstResponder];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_tfName release];
    [_lbName release];
    [_lbPrice release];
    [_tfPrice release];
    [_lbFull release];
    [super dealloc];
}
@end
