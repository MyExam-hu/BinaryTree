//
//  ListStructureNode.h
//  BinaryTree
//
//  Created by huweidong on 29/3/2017.
//  Copyright © 2017年 huweidong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ListStructureNode : NSObject

typedef int datatype;

typedef struct link_node{
    datatype info;
    struct link_node* next;
}node;

@end
