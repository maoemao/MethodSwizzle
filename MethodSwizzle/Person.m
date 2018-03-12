//
//  Person.m
//  MethodSwizzle
//
//  Created by 邹家茂 on 2018/3/12.
//  Copyright © 2018年 zjm. All rights reserved.
//

#import "Person.h"

@implementation Person
- (void)eat {
    NSLog(@"eat");
}

- (instancetype)run {
    NSLog(@"run");
    return self;
}
@end
