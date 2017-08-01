//
//  main.m
//  LinearList
//
//  Created by cochn on 2017/7/27.
//  Copyright © 2017年 cc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinearList.h"

void test(){
    
    LinearList *list = linearCreat(10);
    
    linearAddValue(list, (LinearListNodeValue)10);
    linearAddValue(list, (LinearListNodeValue)15);
    linearAddValue(list, (LinearListNodeValue)10);
    linearAddValue(list, (LinearListNodeValue)15);
    linearAddValue(list, (LinearListNodeValue)15);
    linearAddValue(list, (LinearListNodeValue)30);
    linearAddValue(list, (LinearListNodeValue)20);
    linearAddValue(list, (LinearListNodeValue)15);
    linearInsertAtIndex(list, 0, (LinearListNodeValue)10);
    
    linearPrint(list);
    
    int a = linearLength(list);
    printf("\nlength=%d\n",a);
    
    LinearListNodeValue value = linearNodeValueAtIndex(list, 2);
    printf("\nvalue=%p\n",(LinearListNodeValue)value);
    
    LinearListNodeValue firstValue = linearFirstValue(list);
    LinearListNodeValue lastValue = linearLastValue(list);
    printf("firstValue=%p\nlastValue=%p\n",(LinearListNodeValue)firstValue,(LinearListNodeValue)lastValue);
    
    linearUpdateAtIndex(list, 0, (LinearListNodeValue)999);
    linearPrint(list);
    
    linearRemoveAtIndex(list, 0);
    linearPrint(list);
    
    linearRemoveValue(list, (LinearListNodeValue)10);
    linearPrint(list);
    
    linearRemoveAll(list);
    linearPrint(list);
    
    
    linearFree(list);
    
}

void testP(){
    
    int a = 4;
    int * b = &a;
    void *c = &b;
    NSLog(@"b:%p  sizeof:%lu\nc:%p    sizeof:%lu",b,sizeof(b),c,sizeof(c));
    
}

void array(){
    
    NSString *str = @"11";
    NSLog(@"%p",str);
    NSArray *array = @[str,@"11",@"2",@"11",@"2",@"11",@"2",@"11",@"2"];
    void * point = (__bridge void *)array;
    //指针+1往后找一个地址 地址的大小根据类型判断 int * 会往后找4个字节 long * 找8个
    *((long  *)point + 1) = 0xffffffffffff;//NSArray的count不能超过capacity
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        test();
    }
    return 0;
}


