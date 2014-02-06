//
//  WDImageGalleryLayout.h
//  Wedding
//
//  Created by Andrei on 2/6/14.
//  Copyright (c) 2014 phon-soft. All rights reserved.
//

#import "WDImageGalleryCell.h"

@interface WDImageGalleryLayout : UICollectionViewFlowLayout
-(void)didRotateToOrientation:(UIInterfaceOrientation)orientation;
-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration;
@end
