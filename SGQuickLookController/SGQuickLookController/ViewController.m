//
//  ViewController.m
//  SGQuickLookController
//
//  Created by BlackSugar on 2018/12/10.
//  Copyright © 2018 Sugar. All rights reserved.
//

#import "ViewController.h"
#import "SGQuickLookController/SGQuickLookController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)showFileButtonClicked:(id)sender {
    NSString * filePath = [[NSBundle mainBundle] pathForResource:@"SGQuickLookController"ofType:@"pdf"];
    NSString * showName = @"自定义标题-SGQuickLookController";
    SGQuickLookController * quickLookController = [SGQuickLookController quickLookControllerWithUrl:[NSURL fileURLWithPath:filePath] showName:showName];
    [self presentViewController:quickLookController animated:YES completion:nil];
    
}

@end
