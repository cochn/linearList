//
//  LinearList.h
//  LinearList
//
//  Created by cochn on 2017/7/27.
//  Copyright © 2017年 cc. All rights reserved.
//

#ifndef LinearList_h
#define LinearList_h

#include <stdio.h>

#ifndef LINEARLIST

typedef void * LinearListNodeValue;
typedef void  LinearList;

#endif

/**创建线性表*///用不用指针的话，每次copy的都是深拷贝，浪费内存。使用指针，可以做到浅copy
LinearList * linearCreat(int capacity);

/**释放内存*/
void linearFree(LinearList * list);

/**线性表长度*/
int linearLength(LinearList *list);

/**查询线性表index处的值*/
LinearListNodeValue linearNodeValueAtIndex(LinearList *list, int index);
LinearListNodeValue linearFirstValue(LinearList *list);
LinearListNodeValue linearLastValue(LinearList *list);

/**在index插入value*/
void linearInsertAtIndex(LinearList *list, int index, LinearListNodeValue value);

/**在末尾添加value*/
void linearAddValue(LinearList *list, LinearListNodeValue value);

/**删除index处的值*/
void linearRemoveAtIndex(LinearList *list, int index);

/**删除所有的值*/
void linearRemoveAll(LinearList *list);

/**删除value*/
void linearRemoveValue(LinearList *list, LinearListNodeValue value);

/**修改index处的值*/
void linearUpdateAtIndex(LinearList *list,int index, LinearListNodeValue value);

/**打印*/
void linearPrint(LinearList *list);

#endif /* LinearList_h */












