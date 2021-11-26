//
//  CustomImageView.m
//  DynamicLib
//
//  Created by SuXinDe on 2021/11/26.
//

#import "DImageView.h"

@implementation DImageView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.bounds];
        
        NSBundle *bundle = [NSBundle bundleForClass:[self class]];
        NSURL *url = [bundle URLForResource:@"DynamicLib" withExtension:@"bundle"];
        
        NSBundle *imageBundle = [NSBundle bundleWithURL:url];
        NSString *imagePath = [imageBundle pathForResource:@"icon" ofType:@"jpeg"];
        imageView.image = [UIImage imageWithContentsOfFile:imagePath];
        
        [self addSubview:imageView];
    }
    return self;
}

@end
