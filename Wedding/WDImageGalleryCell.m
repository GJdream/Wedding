//
//  WDImageGalleryCell.m
//  Wedding
//
//  Created by Andrei on 2/6/14.
//  Copyright (c) 2014 phon-soft. All rights reserved.
//

#import "WDImageGalleryCell.h"
#import "WDImageGalleryImageView.h"
@implementation WDImageGalleryCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.zoomScrollView = [[UIScrollView alloc]initWithFrame:self.bounds];
        self.zoomScrollView.delegate = self;
        self.zoomScrollView.maximumZoomScale = 10.0f;
        self.zoomScrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        self.zoomScrollView.clipsToBounds = YES;
        self.zoomScrollView.backgroundColor = [UIColor blueColor];
        [self addSubview:self.zoomScrollView];
        
        self.imageView = [[WDImageGalleryImageView alloc]initWithFrame:self.bounds];
        self.imageView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        self.imageView.contentMode = UIViewContentModeScaleAspectFit;
        self.imageView.backgroundColor = [UIColor yellowColor];
        [self.zoomScrollView addSubview:self.imageView];
        
        self.clipsToBounds = YES;
        
        
        
        self.backgroundColor = [UIColor redColor];
        // Initialization code
    }
    return self;
}
-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.imageView;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
