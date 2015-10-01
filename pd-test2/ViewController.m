//
//  ViewController.m
//  pd-test2
//
//  Created by Alistair Colling on 30/09/2015.
//  Copyright © 2015 Alistair Colling. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.patch = [[PdPatch alloc]initWithFile:@"additive.pd"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)volume1:(UISlider *)sender {
    [PdBase sendFloat:sender.value toReceiver:@"v1"];
}
- (IBAction)volume2:(UISlider *)sender {
    [PdBase sendFloat:sender.value toReceiver:@"v2"];
}
- (IBAction)volume3:(UISlider *)sender {
    [PdBase sendFloat:sender.value toReceiver:@"v3"];
}

- (IBAction)volume4:(UISlider *)sender {
    [PdBase sendFloat:sender.value toReceiver:@"v4"];
}
- (IBAction)pitch1:(UISlider *)sender {
    [PdBase sendFloat:sender.value toReceiver:@"p1"];
}
- (IBAction)pitch2:(UISlider *)sender {
    [PdBase sendFloat:sender.value toReceiver:@"p2"];
}
- (IBAction)pitch3:(UISlider *)sender {
    [PdBase sendFloat:sender.value toReceiver:@"p3"];
}
- (IBAction)pitch4:(UISlider *)sender {
    [PdBase sendFloat:sender.value toReceiver:@"p4"];
}
- (IBAction)metro:(UISwitch *)sender {
    [PdBase sendFloat:sender.isOn toReceiver:@"metro"];
}

@end
