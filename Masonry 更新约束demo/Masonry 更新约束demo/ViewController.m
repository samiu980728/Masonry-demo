//
//  ViewController.m
//  Masonry 更新约束demo
//
//  Created by 萨缪 on 2019/2/20.
//  Copyright © 2019年 萨缪. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
#import "masonryView.h"
@interface ViewController ()

@property (nonatomic, strong) UILabel * label;

@property (nonatomic, assign) CGFloat height;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImageView * view = [[UIImageView alloc] init];
    //    view.text = @"hahhahahahahahaahhahahahahahhahah";
    //    view.numberOfLines = 0;
    //    view.font = [UIFont systemFontOfSize:20];
    view.image = [UIImage imageNamed:@"10.png"];
//    view.backgroundColor = [UIColor darkTextColor];
    view.alpha = 0.3;
//    view.frame = CGRectMake(0, 100, 414, 1);
    [self.view addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.centerX.mas_equalTo(self.view.bounds.size.width/2);
        make.centerX.mas_equalTo(0);
        make.height.equalTo(@15);
        make.top.mas_equalTo(self.view.mas_top).offset(100);
        make.width.mas_equalTo(19);
    }];
    
//    self.label = [[UILabel alloc] init];
//    self.label.backgroundColor = [UIColor yellowColor];
//    self.label.text = @"23333333333";
//    [self.view addSubview:self.label];
//    self.height = 2;
//    [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
////        make.left.and.right.mas_equalTo(self)
//        make.width.mas_equalTo(self.view.mas_width);
//        make.top.mas_equalTo(self.view.mas_top).offset(100);
//        make.height.mas_equalTo(self.height);
//    }];
//
//    masonryView * masView = [[masonryView alloc] init];
//    [self.view addSubview:masView];
//
//    dispatch_time_t time = dispatch_time(DISPATCH_TIME_NOW, (ino64_t)(3 * NSEC_PER_SEC));
//    dispatch_after(time, dispatch_get_main_queue(), ^{
//        self.height = 30;
//        // 告诉self.view约束需要更新
//        [self.view setNeedsUpdateConstraints];
//        [UIView animateWithDuration:2 animations:^{
//            [self.label mas_updateConstraints:^(MASConstraintMaker *make) {
//                make.height.mas_equalTo(self.height);
//            }];
//            [self.view layoutIfNeeded];
//        }];
//        masView.viewHeight = 30;
//        [masView layoutIfNeeded];
//    });
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
