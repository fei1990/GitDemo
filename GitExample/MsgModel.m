//
//  MsgModel.m
//  GitExample
//
//  Created by wangfei on 2018/6/1.
//  Copyright © 2018年 wangfei. All rights reserved.
//

#import "MsgModel.h"
#import "Model1.h"
#import <objc/runtime.h>

@interface MsgModel()

@property (nonatomic, strong) Model1 *model1;

@end

@implementation MsgModel

- (instancetype)init {
    if (self = [super init]) {
        self.model1 = [[Model1 alloc]init];
    }
    return self;
}

////1.消息动态解析
//+ (BOOL)resolveInstanceMethod:(SEL)sel {
////    if (![self respondsToSelector:sel]) {
////        return class_addMethod([self class], sel, (IMP)dynamicMethod, "v@:");
////    }
//    return [super resolveInstanceMethod:sel];
//}
//
//void dynamicMethod(id self, SEL _cmd) {
//    NSLog(@"%s", __func__);
//}
//
////2.消息重定向
//- (id)forwardingTargetForSelector:(SEL)aSelector {
//    
//    if (![self respondsToSelector:aSelector]) {
//        return self.model1;
//    }
//    
//    return [super forwardingTargetForSelector:aSelector];
//}

//3.消息转发
- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    return [NSMethodSignature signatureWithObjCTypes:"v@:"];
}
- (void)forwardInvocation:(NSInvocation *)anInvocation {
    if (anInvocation.selector == @selector(msgTest)) {
        [anInvocation invokeWithTarget:self.model1];
        return;
    }
    [super forwardInvocation:anInvocation];
}

//- (void)msgTest {
//    NSLog(@"%s", __func__);
//}

@end
