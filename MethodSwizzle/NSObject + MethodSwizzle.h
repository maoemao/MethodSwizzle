//
//  NSObject + MethodSwizzle.h
//  MethodSwizzle
//
//  Created by 邹家茂 on 2018/3/12.
//  Copyright © 2018年 zjm. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Swizzle)

+ (BOOL)swizzleMethod:(SEL)origSelector withMethod:(SEL)newSelector;

+ (BOOL)swizzleString:(NSString*)oldString withString:(NSString*)newString;

+ (BOOL)swizzleString1:(NSString*)string1 class1:(Class)class1 withString2:(NSString*)string2 class2:(Class)class2;

@end
