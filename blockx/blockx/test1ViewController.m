//
//  test1ViewController.m
//  blockx
//
//  Created by mooer on 2018/3/29.
//  Copyright © 2018年 mooer. All rights reserved.
//

#import "test1ViewController.h"

@interface test1ViewController ()
{
    NSString *testStr;
}

@end

@implementation test1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event//点击
{
    //block变量回调
    if (self.dataBlock) {
        self.dataBlock(@"嘿嘿  我是block111");
    }
    testStr = @"我进化啦 不是初始数值了";
    [self dismissViewControllerAnimated:YES completion:nil];
}


//将block嵌入函数
-(void)processWithStr:(NSString *)str withCallBackBlock:(DataBlock)myDataBlock{
    if (testStr.length == 0) {
        testStr = @"我是初始数据";
    }
    myDataBlock(testStr);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
