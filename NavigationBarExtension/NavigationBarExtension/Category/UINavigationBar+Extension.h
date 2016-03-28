//
//  UINavigationBar+Extension.h
//  NavigationBarExtension
//
//  Created by kangbing on 15/10/26.
//  Copyright © 2015年 kangbing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>

@interface UINavigationBar (Extension)


@property (nonatomic, strong) UIView *alphaView;

- (void)kb_alphaUINavigationBarView:(UIColor *)backgroundColor;


@end
