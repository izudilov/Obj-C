//
//  ViewController.m
//  ZI-2
//
//  Created by user179996 on 31.05.2021.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"View - WillAppear");
}

- (void)viewWillDisappear:(BOOL)animated {
    NSLog(@"View - WillDisappear");
}

- (void)viewDidAppear:(BOOL)animated {
    NSLog(@"View - DidAppear");
}

- (void)viewDidDisappear:(BOOL)animated {
    NSLog(@"View - DidDisappear");
}

- (void)viewWillUnload {
    NSLog(@"View - WillUnload");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"View - DidLoad");
}


@end
