//
//  WDImageGallery.m
//  Wedding
//
//  Created by Andrei on 2/6/14.
//  Copyright (c) 2014 phon-soft. All rights reserved.
//

#import "WDImageGallery.h"
@implementation WDImageGallery

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}
-(void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset
{
    NSLog(@"%@",NSStringFromCGPoint(*targetContentOffset));
   // targetContentOffset->x = targetContentOffset->x + 1400;
    //targetContentOffset->y = targetContentOffset->y+ 40;
  //  *targetContentOffset = CGPointMake(targetContentOffset->x , targetContentOffset->y+ 20);
   // [scrollView setContentOffset:*targetContentOffset animated:YES];
     NSLog(@"%@",NSStringFromCGPoint(*targetContentOffset));
    NSLog(@"%@",NSStringFromCGPoint(scrollView.contentOffset));
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    WDImageGalleryCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"WDImageCell" forIndexPath:indexPath];
    [self.galleryDataSource WDImageGallery:self ImageAtIndexPath:indexPath withCallback:^(UIImage *readyImage) {
        cell.imageView.image = readyImage;
        
    }];
    /*[self addGestureRecognizer:cell.zoomScrollView.pinchGestureRecognizer];
    [self addGestureRecognizer:cell.zoomScrollView.panGestureRecognizer];

    */
    return cell;
}
-(void)collectionView:(UICollectionView *)collectionView didEndDisplayingCell:(UICollectionViewCell *)cell forItemAtIndexPath:(NSIndexPath *)indexPath
{/*
    
    if ([cell isKindOfClass:[WDImageGalleryCell class]]) {
        WDImageGalleryCell *cellCasted = (WDImageGalleryCell*)cell;
        [self removeGestureRecognizer:cellCasted.zoomScrollView.pinchGestureRecognizer];
        [self removeGestureRecognizer:cellCasted.zoomScrollView.panGestureRecognizer];

    }*/
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self.galleryDataSource numberOfImagesWDImageGallery:self];
}
-(NSInteger)numberOfSections
{
    return 1;
}
@end
