//
//  WDImageGalleryCell.h
//  Wedding
//
//  Created by Andrei on 2/6/14.
//  Copyright (c) 2014 phon-soft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WDImageGalleryCell : UICollectionViewCell <UIScrollViewDelegate>
@property(nonatomic,retain)UIImageView *imageView;
@property(nonatomic,retain)UIScrollView *zoomScrollView;
@end
