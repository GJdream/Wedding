//
//  WDPhotoGalleryVC.h
//  Wedding
//
//  Created by Andrei on 2/6/14.
//  Copyright (c) 2014 phon-soft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WDImageGallery.h"
#import "WDImageGalleryDataSource.h"
@interface WDPhotoGalleryVC : UIViewController
@property (weak, nonatomic) IBOutlet WDImageGallery *mPhotoGallery;
@property (nonatomic,retain)WDImageGalleryDataSource *mDataSource;
@end
