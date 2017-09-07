# linearList
线性表的线式存储

/**创建线性表*/
```
LinearList * linearCreat(int capacity){
    
    //先给linearList开辟内存，存放它的信息
    LinearList *list = malloc(sizeof(LinearList));//malloc在堆中开辟内存，因为如果在栈中开辟内存，函数一旦调用完毕，栈内存就会释放，无法再使用
    if (list != NULL) {
        list -> capacity = capacity;
        list -> length = 0;
        list -> value = malloc(capacity * sizeof(LinearListNodeValue));//给value存放的数据开辟内存
    }
    
    return list;
}
```

/**释放内存*/
```
void linearFree(LinearList * list){
    
    if (list == NULL) {
        return;
    }
    
    free(list -> value);
    free(list);
}
```
/**线性表长度*/
```
int linearLength(LinearList *list){
    if (list == NULL) {
        return -1;
    }
    
    return list -> length;
}
```

/**查询线性表index处的值*/
```
LinearListNodeValue linearNodeValueAtIndex(LinearList *list, int index){
    
    if (list == NULL || index < 0 || index >= list -> length) {
        return 0;
    }
    
    return list -> value[index];
}

LinearListNodeValue linearFirstValue(LinearList *list){
    return linearNodeValueAtIndex(list, 0);
}

LinearListNodeValue linearLastValue(LinearList *list){
    return linearNodeValueAtIndex(list, list -> length -1);
}
```
/**在index插入value*/
```
void linearInsertAtIndex(LinearList *list, int index, LinearListNodeValue value){
    
    if (list == NULL || index < 0 || index > list -> length ) {
        return;
    }
    
    //扩容
    if (list -> length == list -> capacity) {
        
        int newCapacity = list -> capacity + 10;
        LinearListNodeValue *newValue = malloc(newCapacity * sizeof(LinearListNodeValue));
        if (newValue == NULL) return;
        memcpy(newValue, list -> value, newCapacity * sizeof(LinearListNodeValue));
        free(list -> value);
        list -> value = newValue;
        list -> capacity = newCapacity;
    }
    
    for (int i = list -> length;i >= index; i--) {
        list -> value[i+1] = list -> value[i];
    }
    
    list -> value[index] = value;
    list -> length ++;
}
```
/**在末尾添加value*/
```
void linearAddValue(LinearList *list, LinearListNodeValue value){
    linearInsertAtIndex(list, list -> length, value);
}
```
/**删除index处的值*/
```
void linearRemoveAtIndex(LinearList *list, int index){
    
    if (list == NULL || index < 0 || index >= list -> length) {
        return;
    }
    
    for (int i = index; i < list -> length; i++) {
        list -> value[i] = list -> value[i+1];
    }
    
    list -> length --;
    
}
```
/**删除所有的值*/
```
void linearRemoveAll(LinearList *list){
    
    if (list == NULL) {
        return;
    }
    
    list -> length = 0;
}
```
/**删除value*///如果调用linearRemoveAtIndex实现，需要3层循环 时间复杂度太大不推荐
```
void linearRemoveValue(LinearList *list, LinearListNodeValue value){
    
    if (list == NULL) {
        return;
    }
    
    int record = 0;
    for (int i = 0; i < list -> length; i++) {
        if (list -> value[i] == value) {
            record ++;
        }else{
            list -> value[i - record] = list -> value[i];
        }
    }
    
    list -> length -= record;
}
```
/**修改index处的值*/
```
void linearUpdateAtIndex(LinearList *list,int index, LinearListNodeValue value){
    
    if (list == NULL || index < 0 || index >= list -> length) {
        return;
    }
    
    list -> value[index] = value;
}
```
