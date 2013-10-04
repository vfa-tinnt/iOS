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

- (void) setBlank {
    //NameAndPrice *strBlank = [[NameAndPrice alloc] init];
    NSString *setBlank = @" 	";
    self.tfName.text= setBlank;
}
- (IBAction)actionGetFull:(id)sender {
    
    NSString *getName = self.tfName.text;
    NSString *getPrice = self.tfPrice.text;
    self.lbFull.text = [NSString stringWithFormat:@"%@ %@",getName, getPrice];
    
}

- (IBAction)actionGetPrice:(id)sender {
    
    NSString *result = self.tfPrice.text;
    self.lbPrice.text = result;
    [self.tfPrice resignFirstResponder];
    
}
- (IBAction)actionGetName:(id)sender {
    
    NSString *result = self.tfName.text;
    self.lbName.text = result;
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
