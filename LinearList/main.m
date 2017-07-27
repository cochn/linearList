//
//  main.m
//  LinearList
//
//  Created by 曹臣 on 2017/7/27.
//  Copyright © 2017年 cc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinearList.h"

void test(){
    
    LinearList *list = linearCreat(10);
    
    linearAddValue(list, 10);
    linearAddValue(list, 15);
    linearAddValue(list, 10);
    linearAddValue(list, 15);
    linearAddValue(list, 15);
    linearAddValue(list, 30);
    linearAddValue(list, 20);
    linearAddValue(list, 15);
    linearInsertAtIndex(list, 0, 10);
    
    linearPrint(list);
    
    int a = linearLength(list);
    printf("\nlength=%d\n",a);
    
    LinearListNodeValue value = linearNodeValueAtIndex(list, 2);
    printf("\nvalue=%d\n",value);
    
    LinearListNodeValue firstValue = linearFirstValue(list);
    LinearListNodeValue lastValue = linearLastValue(list);
    printf("firstValue=%d\nlastValue=%d\n",firstValue,lastValue);
    
    linearUpdateAtIndex(list, 0, 999);
    linearPrint(list);
    
    linearRemoveAtIndex(list, 0);
    linearPrint(list);
    
    linearRemoveValue(list, 10);
    linearPrint(list);
    
    linearRemoveAll(list);
    linearPrint(list);
    
    
    linearFree(list);
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        test();
    }
    return 0;
}


