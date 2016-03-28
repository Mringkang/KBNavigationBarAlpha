# KBNavigationBarAlpha
UINavigationBar渐变透明


* 导入分类, 在scrollViewDidScroll方法里通过偏移,调用分类方法即可


* - (void)scrollViewDidScroll:(UIScrollView *)scrollView{


    CGFloat offsetY = scrollView.contentOffset.y;
    
    UIColor *color = [UIColor orangeColor];
    
    CGFloat alpha = (50 + 64 - offsetY) / 64;
    
    if (offsetY > 50) {
        
        [self.navigationController.navigationBar kb_alphaUINavigationBarView:[color colorWithAlphaComponent:alpha]];
    }else{
    
        [self.navigationController.navigationBar kb_alphaUINavigationBarView:[color colorWithAlphaComponent:1]];
        
    }


}