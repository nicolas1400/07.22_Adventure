//
//  ViewController.m
//  Adventure
//
//  Created by Nicolas Semenas on 22/07/14.
//  Copyright (c) 2014 Nicolas Semenas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UITextView *texto;

@end

@implementation ViewController



- (IBAction)reset:(id)sender {
    

    
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    self.label.text = @"Not played yet!";


}





- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton*)sender
{

        UIViewController *vc = [segue destinationViewController];
        NSString *title = sender.currentTitle;
        vc.title=title ;
    
    
    if ([title isEqualToString:@"Eat boxes"]){
        self.label.text = @"Ryan gets his stomach pumped";}
    
    else if
    
     ([title isEqualToString:@"Clear up boxes"]){
        self.label.text = @"Ryan gets married with four children";}

   

   
    
    
    
    
}

@end
