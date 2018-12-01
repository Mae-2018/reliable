//
//  BViewController.m
//  msgSendAndForward
//
//  Created by Mae on 2018/12/1.
//  Copyright © 2018年 刘静冉. All rights reserved.
//

#import "BViewController.h"
#import <objc/runtime.h>
#import "CViewController.h"

@interface BViewController ()

@end

@implementation BViewController
- (void)BTest_Repalace{
    NSLog(@"BViewController中的替代方法");
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
// 动态解析
//+ (BOOL)resolveInstanceMethod:(SEL)aSelector{
//    if (aSelector == @selector(BTest)) {
//        Method method = class_getInstanceMethod(self, @selector(BTest_Repalace));
//        class_addMethod(self, aSelector, method_getImplementation(method), method_getTypeEncoding(method));
//    }
//    return [super resolveInstanceMethod:aSelector];
//}

//消息转发
//- (id)forwardingTargetForSelector:(SEL)aSelector{
//    if (aSelector == @selector(BTest)) {
//        return [[CViewController alloc]init];
//    }
//    return [super forwardingTargetForSelector:aSelector];
//}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector{
    if (aSelector == @selector(BTest)) {
        return [NSMethodSignature signatureWithObjCTypes:"v@:"];
    }
    return [super methodSignatureForSelector:aSelector];
}
- (void)forwardInvocation:(NSInvocation *)anInvocation{
    [anInvocation invokeWithTarget:[[CViewController alloc]init]];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
