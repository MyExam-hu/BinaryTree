//
//  ListStructureNode.m
//  BinaryTree
//
//  Created by huweidong on 29/3/2017.
//  Copyright © 2017年 huweidong. All rights reserved.
//

#import "ListStructureNode.h"

@implementation ListStructureNode

//创建一个空链表
node* init_hlink_list(){
    node *head;
    head=(node*)malloc(sizeof(node));
    head->next=NULL;
    return head;
}


//打印链表
void display_link_list(node *head){
    if(head == NULL){
        printf("the list is empty!\n");
    }else{
        node *ptr = head;
        while(ptr){
            printf("5%d",ptr->info);
            ptr = ptr->next;
        }
    }
}


//查找数据值为x的结点
node *find_node(node* head,datatype x){
    node* ptr= head;
    while(ptr && ptr->info != x)
        ptr= ptr->next;
    return ptr;
}


//查找索引值为index的结点
node* find_index(node* head,int index){
    node *ptr = head;
    int pos = 0;
    if(index<0){
        printf("Index Error\n");
        exit(1);
    }
    while(ptr && pos != index){
        ptr=ptr->next;
        pos++;
    }
    return ptr;
}

//在i位置插入一个结点
node* insert_link_list_index(node *head,int index,datatype x){
    if(index<0){
        printf("index error\n");
        exit(1);
    }
    if(index == 0){          //在头插入元素，不用判断链表是否为空
        node *q = (node*) malloc(sizeof(node));
        q->info = x;
        q->next = head;
        head = q;
        return head;
    }
    else{
        node *ptr = find_node(head,index-1);
        node* q = (node*)malloc(sizeof(node));
        q->info = x;
        q->next = ptr->next;
        ptr->next = q;
        return head;
    }
}

//在数据y之后插入一个x结点
node* intsert_node_yx(node *head,datatype x,datatype y){
    node *q=find_node(head,y);
    if(!q){
        printf("not found the node \n");
        return head;
    }
    node *p = (node*)malloc(sizeof(node));
    p->info = x;
    p->next= q->next;
    q->next = p;
    return head;
}

//删除i位置的结点
node* del_link_list_index(node* head,int index){
    if(!head){
        printf("the list is empty\n");
        return head;
    }
    node* p=head,*q=NULL;
    if(index == 0){          //第一个元素
        head = head->next;
    }else{
        p=find_index(head,index-1);      //上面定义的第5个函数
        if(p && p->next){
            q = p->next;
            p->next= q->next;
        }else{
            printf("the index is not exit\n");
            return head;
        }
    }
    free(q);
    return head;
}

//删除值为x的结点
node* del_link_list_node(node* head,datatype x){
    if(!head){
        printf("the list is empty\n");
        return head;
    }
    node* ptr=head,*pre=NULL;
    while(!ptr && ptr->info != x){
        pre = ptr;
        ptr=ptr->next;
    }
    if(!ptr){                  //没找到
        printf("no data\n");
    }else if(pre){            //第一个就是
        head=ptr->next;
    }else{                    //链表中的某个位置
        pre->next= ptr->next;
    }
    free(ptr);
    return head;
}


@end
