# KBNavigationBarAlpha
UINavigationBar渐变透明


* 导入分类, 在scrollViewDidScroll方法里通过偏移,调用分类方法即可

![(示例)](http://f.picphotos.baidu.com/album/s%3D740%3Bq%3D90/sign=1d8b8eaaac18972ba73a02ced6f60ab4/14ce36d3d539b600f76ebd09ee50352ac75cb7e8.jpg
)

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