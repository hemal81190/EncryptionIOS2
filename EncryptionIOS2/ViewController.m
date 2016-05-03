//
//  ViewController.m
//  EncryptionIOS2
//
//  Created by tops on 5/2/16.
//  Copyright (c) 2016 viewn. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *message = @"top secret message";
    NSString *password = @"p4ssw0rd";
    
    NSString *encryptedData = [AESCrypt encrypt:message password:password];

    NSString *message2 = [AESCrypt decrypt:encryptedData password:password];
    
    NSLog(@"e:%@",encryptedData);
    NSLog(@"d:%@",message2);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
