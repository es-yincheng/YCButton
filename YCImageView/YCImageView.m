//
//  YCImageView.m
//  YCButtonDemo
//
//  Created by cheng yin on 16/1/12.
//  Copyright © 2016年 cheng yin. All rights reserved.
//

#import "YCImageView.h"

#define PHOTO_HEIGHT self.frame.size.width/2

@implementation YCImageView

/**
 *  在属性改变之后调用的方法
 */
- (void)updateConstraints
{
    [super updateConstraints];
    if (self.masksToBounds) {
        if (self.cornerRadius) {
            self.layer.cornerRadius = self.cornerRadius;
        } else {
            self.layer.cornerRadius = PHOTO_HEIGHT;
        }
    } else {
        self.layer.cornerRadius = 0;
    }
    
    if (self.boardEnable) {
        if (self.boardWith) {
            self.layer.borderWidth = self.boardWith;
        } else {
            self.layer.borderWidth = 3;
        }
    } else {
        self.layer.borderWidth = 0;
    }
    
    if (self.boardColor) {
        self.layer.borderColor = self.boardColor.CGColor;
    } else {
        self.layer.borderColor = [UIColor whiteColor].CGColor;
    }
}


-(void)setMasksToBounds:(BOOL)masksToBounds
{
//    self.layer.masksToBounds = masksToBounds;
    if (masksToBounds) {
        if (self.cornerRadius) {
            self.layer.cornerRadius = self.cornerRadius;
        } else {
            self.layer.cornerRadius = PHOTO_HEIGHT;
        }
    } else {
        self.layer.cornerRadius = 0;
        self.layer.borderWidth = 0;
    }
}

-(void)setCornerRadius:(float)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
}

-(void)setBoardEnable:(BOOL)boardEnable
{
    NSLog(@"rd:%f\nwith%ld",self.cornerRadius,(long)self.boardWith);
    if (self.masksToBounds) {
        if (self.cornerRadius) {
            self.layer.cornerRadius = self.cornerRadius;
        } else {
            self.layer.cornerRadius = PHOTO_HEIGHT;
        }
        if (boardEnable) {
            if (self.boardWith) {
                self.layer.borderWidth = self.boardWith;
            } else {
                self.layer.borderWidth = 3;
            }
        } else {
            self.layer.borderWidth = 0;
        }
    } else {
        self.layer.borderWidth = 0;
    }
}

-(void)setBoardWith:(NSInteger)boardWith
{

            self.layer.borderWidth = boardWith;

}

-(void)setBoardColor:(UIColor *)boardColor
{
    self.layer.borderColor = boardColor.CGColor;
}

@end
