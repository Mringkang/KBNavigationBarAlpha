//
//  KBTableViewController.m
//  NavigationBarExtension
//
//  Created by kangbing on 15/10/26.
//  Copyright © 2015年 kangbing. All rights reserved.
//

#import "KBTableViewController.h"
#import "UINavigationBar+Extension.h"

@interface KBTableViewController ()

@property (nonatomic, strong) NSMutableArray *dataArray;

@end

@implementation KBTableViewController



- (NSMutableArray *)dataArray{


    if (_dataArray == nil) {
        _dataArray = [NSMutableArray array];
        
        for (int i = 0; i < 50; i++) {
            
            NSString *str = [NSString stringWithFormat:@"测试数据%zd",i];
            
            [_dataArray addObject:str];
            
        }
        
    }
    return _dataArray.copy;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.dataArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *ID = @"KBcell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
 
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    cell.textLabel.text = self.dataArray[indexPath.row];
    
    return cell;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{


    CGFloat offsetY = scrollView.contentOffset.y;
    
    UIColor *color = [UIColor orangeColor];
    
    CGFloat alpha = (50 + 64 - offsetY) / 64;
    
    if (offsetY > 50) {
        
        [self.navigationController.navigationBar kb_alphaUINavigationBarView:[color colorWithAlphaComponent:alpha]];
    }else{
    
        [self.navigationController.navigationBar kb_alphaUINavigationBarView:[color colorWithAlphaComponent:1]];
        
    }


}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    // 导航栏底部的线隐藏
    [self.navigationController.navigationBar setShadowImage:[[UIImage alloc]init]];
}





@end
