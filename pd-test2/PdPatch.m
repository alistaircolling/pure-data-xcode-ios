//
//  PdPatch.m
//  pd-test2
//
//  Created by Alistair Colling on 30/09/2015.
//  Copyright © 2015 Alistair Colling. All rights reserved.
//

#import "PdPatch.h"

@implementation PdPatch

-(instancetype)initWithFile:(NSString *)pdFile {
    void *patch;
    self = [super init];
    if (self){
        patch = [PdBase openFile:pdFile path:[[NSBundle mainBundle]resourcePath]];
        if (!patch){
            NSLog(@"There's no patch");
        }
    }
    return self;
}

@end
