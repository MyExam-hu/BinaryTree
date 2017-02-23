//
//  BinaryTreeNode.h
//  BinaryTree
//
//  Created by huweidong on 23/2/2017.
//  Copyright © 2017年 huweidong. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *  二叉树节点
 */
@interface BinaryTreeNode : NSObject

/**
 *  值
 */
@property (nonatomic, assign) NSInteger value;
/**
 *  左节点
 */
@property (nonatomic, strong) BinaryTreeNode *leftNode;
/**
 *  右节点
 */
@property (nonatomic, strong) BinaryTreeNode *rightNode;

@end
