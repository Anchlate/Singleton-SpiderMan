//
//  ViewController.m
//  Singleton-SpiderMan
//
//  Created by Anchlate Lee on 16/5/1.
//  Copyright © 2016年 Anchlate. All rights reserved.
//

#import "ViewController.h"
#import "SpiderMan.h"
#import "Peoper.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    SpiderMan *man1 = [SpiderMan shanreSpiderMan];
    SpiderMan *man2 = [SpiderMan shanreSpiderMan];
    SpiderMan *man3 = [SpiderMan shanreSpiderMan];
    SpiderMan *man4 = [SpiderMan shanreSpiderMan];
    SpiderMan *man5 = [SpiderMan shanreSpiderMan];
    
    NSLog(@"%@\n%@\n%@\n%@\n%@\n", man1, man2, man3, man4, man5);
    
    
    Peoper *p1 = [Peoper sharePeoper];
    Peoper *p2 = [Peoper sharePeoper];
    Peoper *p3 = [Peoper sharePeoper];
    Peoper *p4 = [Peoper sharePeoper];
    Peoper *p5 = [Peoper sharePeoper];
    
    NSLog(@"%@\n%@\n%@\n%@\n%@\n", p1, p2, p3, p4, p5);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
