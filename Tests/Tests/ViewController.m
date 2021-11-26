//
//  ViewController.m
//  Tests
//
//  Created by SuXinDe on 2021/11/26.
//

#import "ViewController.h"
#import <DynamicLib/DynamicLib.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    DImageView *dImageView = [[DImageView alloc] initWithFrame:CGRectMake(0, 100, 40, 40)];
    [self.view addSubview:dImageView];

    
    NSBundle *bundle = [NSBundle bundleForClass:[DImageView class]];
    NSURL *url = [bundle URLForResource:@"DynamicLib" withExtension:@"bundle"];
    
    NSBundle *imageBundle = [NSBundle bundleWithURL:url];
    NSString *imagePath = [imageBundle pathForResource:@"icon" ofType:@"jpeg"];
    UIImage *image = [UIImage imageWithContentsOfFile:imagePath];
    
    assert(image != nil);
    

}


@end
