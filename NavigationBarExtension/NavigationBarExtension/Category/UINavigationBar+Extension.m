//
//  UINavigationBar+Extension.m
//  NavigationBarExtension
//
//  Created by kangbing on 15/10/26.
//  Copyright © 2015年 kangbing. All rights reserved.
//

#import "UINavigationBar+Extension.h"

@implementation UINavigationBar (Extension)

static char backgroundView;


- (void)setAlphaView:(UIView *)alphaView{

    objc_setAssociatedObject(self, &backgroundView, alphaView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);

}


- (UIView *)alphaView{

    return objc_getAssociatedObject(self, &backgroundView);
}


- (void)kb_alphaUINavigationBarView:(UIColor *)backgroundColor{

    
    if (!self.alphaView) {
        [self setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
        self.alphaView = [[UIView alloc]initWithFrame:CGRectMake(0, -20,[UIScreen mainScreen].bounds.size.width , 64)];
        self.alphaView.userInteractionEnabled = NO;
        
        self.alphaView.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
        
        [self insertSubview:self.alphaView atIndex:0];
        
    }
    self.alphaView.backgroundColor = backgroundColor;
    

}



@end
