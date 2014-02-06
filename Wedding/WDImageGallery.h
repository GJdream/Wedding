//
//  WDImageGallery.h
//  Wedding
//
//  Created by Andrei on 2/6/14.
//  Copyright (c) 2014 phon-soft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WDImageGalleryCell.h"
@class WDImageGallery;

typedef void (^ImageReadyCallback)(UIImage* readyImage);

@protocol WDImageProtocol <NSObject>
-(void)Image;
@end

@protocol WDImageGalleryDataSource <UICollectionViewDataSource>
/**
 *  This method must return the number of Images that the Image Gallery must Display
 *
 *  @param ImageGallery Image Gallery that needs the number of images to display
 *
 *  @return number of Images to be displayed
 */
-(NSInteger)numberOfImagesWDImageGallery:(WDImageGallery*)ImageGallery;
/**
 *  This methor needs the image object that will be displayed in the gallery cell at the indexpath provided.
 *
 *  @param ImageGallery Image Gallery Object
 *  @param index        index of image to be displayed
 *  @param callback     callback block for the image ( There is a callback block for Sync/Async images).
 */
-(void)WDImageGallery:(WDImageGallery*)ImageGallery ImageAtIndexPath:(NSIndexPath*)index withCallback:(ImageReadyCallback)callback;
@end

@interface WDImageGallery : UICollectionView <UICollectionViewDataSource,UICollectionViewDelegate>
@property(nonatomic)id<WDImageGalleryDataSource> galleryDataSource;
@end
