//
//  YCImageView.h
//  YCButtonDemo
//
//  Created by cheng yin on 16/1/12.
//  Copyright © 2016年 cheng yin. All rights reserved.
//

#import <UIKit/UIKit.h>

// 在定义类的前面加上IB_DESIGNABLE宏,确保该控件在xib或storyboard上可以实时渲染
IB_DESIGNABLE

@interface YCImageView : UIImageView

/**
 *  是否开启圆角效果，默认关闭
 */
@property(nonatomic) IBInspectable BOOL masksToBounds;

/**
 *  圆角弧度，默认值10
 */
@property(nonatomic, assign) IBInspectable float cornerRadius;

/**
 *  开启边框，默认关闭
 */
@property(nonatomic) IBInspectable BOOL boardEnable; //IBInspectable 修饰的属性可以在 xib或storyboard上显示

/**
 *  边框颜色，默认值lightGrayColor
 */
@property(nonatomic, strong) IBInspectable UIColor *boardColor;

/**
 *  边框宽度，默认为1
 */
@property(nonatomic, assign) IBInspectable NSInteger boardWith;

@end
