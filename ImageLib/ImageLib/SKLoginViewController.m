//
//  SKViewController.m
//  ImageLib
//
//  Created by Yan Li on 14/03/2014.
//  Copyright (c) 2014 strikingly. All rights reserved.
//

#import "SKLoginViewController.h"

@interface SKLoginViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *usernameTF;
@property (weak, nonatomic) IBOutlet UITextField *passwordTF;

@end



@implementation SKLoginViewController


#pragma mark - Initialization


#pragma mark - Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


#pragma mark - TextField Delegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if ([textField isEqual:self.usernameTF]) {
        [self.passwordTF becomeFirstResponder];
    } else {
        [textField resignFirstResponder];
    }
    
    return YES;
}


#pragma mark - Actions

- (IBAction)login:(id)sender
{
    [self performSegueWithIdentifier:@"login" sender:self];
}


@end
