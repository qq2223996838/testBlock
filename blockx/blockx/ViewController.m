//
//  ViewController.m
//  blockx
//
//  Created by mooer on 2018/3/29.
//  Copyright © 2018年 mooer. All rights reserved.
//

#import "ViewController.h"
#import "test1ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()
{
    test1ViewController *test1;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    test1 = [[test1ViewController alloc] init];

    
}

-(void)viewWillAppear:(BOOL)animated
{
    
    test1.dataBlock = ^(NSString *backMsg){   // 1
        
        NSLog(@"text is %@",backMsg);
        
    };
    
    //函数内嵌block回调（比较好）
    [test1 processWithStr:@"command Str2" withCallBackBlock:^(NSString *backMsg) {
        NSLog(@"text is：%@",backMsg);
    }];
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event//点击
{
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    [delegate.window.rootViewController presentViewController:test1 animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
