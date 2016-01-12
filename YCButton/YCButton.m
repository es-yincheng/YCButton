//
//  YCButton.m
//  YCButtonDemo
//
//  Created by cheng yin on 16/1/12.
//  Copyright © 2016年 cheng yin. All rights reserved.
//

#import "YCButton.h"

@implementation YCButton

- (void)drawRect:(CGRect)rect {
    if (self.masksToBounds) {
        if (self.cornerRadius) {
            self.layer.cornerRadius = self.cornerRadius;
        } else {
            self.layer.cornerRadius = 10;
        }
    } else {
        self.layer.cornerRadius = 0;
    }
    
    if (self.boardEnable) {
        if (self.boardWith) {
            self.layer.borderWidth = self.boardWith;
        } else {
            self.layer.borderWidth = 1;
        }
    } else {
        self.layer.borderWidth = 0;
    }
    
    if (self.boardColor) {
        self.layer.borderColor = self.boardColor.CGColor;
    } else {
        self.layer.borderColor = [UIColor lightGrayColor].CGColor;
    }
}

@end
