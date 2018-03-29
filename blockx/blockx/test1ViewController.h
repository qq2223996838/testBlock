//
//  test1ViewController.h
//  blockx
//
//  Created by mooer on 2018/3/29.
//  Copyright © 2018年 mooer. All rights reserved.
//

#import "ViewController.h"

@interface test1ViewController : ViewController

/*
 声明一个block
 (返回类型)(^block名称)(参数类型)=^(参数列表){代码实现};。
 如果没有参数，等号后面参数列表的()可以省略。
 */

//定义block
typedef void (^DataBlock)(NSString *backMsg);
//新建block变量
@property (copy) DataBlock dataBlock;


//另一种
//直接带函数内Block回调的接口函数
-(void)processWithStr:(NSString *)str withCallBackBlock:(DataBlock)myDataBlock;

@end
