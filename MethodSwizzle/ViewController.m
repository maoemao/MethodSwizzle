//
//  ViewController.m
//  MethodSwizzle
//
//  Created by 邹家茂 on 2018/3/12.
//  Copyright © 2018年 zjm. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+Method.h"
#import "NSObject + MethodSwizzle.h"
#import "Person.h"
typedef void (*MyIMP)(id, SEL);

@interface ViewController ()

@end

@implementation ViewController
+ (void)load {
    [self swizzleMethod:@selector(viewDidLoad) withMethod:@selector(myViewDidLoad)];
    [self swizzleString1:@"eat" class1:[Person class] withString2:@"myeat" class2:[self class]];
}

- (void)myViewDidLoad {
    NSLog(@"myViewDidLoad");
    [self myViewDidLoad];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *person = [[Person alloc] init];
    SEL theSEL = nil;
    MyIMP theIMP = nil;
    // Do any additional setup after loading the view, typically from a nib.
    [NSObject test:@"eat" theClass:[person class] value1:&theSEL value2:&theIMP value3:nil];
    theIMP(person,theSEL);
    [self myeat];
}

- (void)myeat {
    NSLog(@"myeat");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
