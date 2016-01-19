//
//  driverMainVC.m
//  TownSquares
//
//  Created by Aaron Crawfis on 1/16/16.
//  Copyright © 2016 Aaron Crawfis. All rights reserved.
//

#import "driverMainVC.h"

@interface driverMainVC ()

@end

@implementation driverMainVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"goToHome"]){
        driverHomeVC *controller = (driverHomeVC *)segue.destinationViewController;
        controller.myDriver = self.myDriver;
    }
}

- (IBAction)signInButtonPressed:(UIButton *)sender
{
    self.myDriver = [[driverObject alloc] init];
    [self performSegueWithIdentifier:@"goToHome" sender:self];
}

- (IBAction)backButtonPressed:(UIButton *)sender {
}
@end
