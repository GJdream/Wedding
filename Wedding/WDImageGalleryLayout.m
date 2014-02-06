//
//  WDImageGalleryLayout.m
//  Wedding
//
//  Created by Andrei on 2/6/14.
//  Copyright (c) 2014 phon-soft. All rights reserved.
//

#import "WDImageGalleryLayout.h"

@implementation WDImageGalleryLayout
-(void)didRotateToOrientation:(UIInterfaceOrientation)orientation
{
    CGPoint offsetPoint = self.collectionView.contentOffset;
    offsetPoint.x = self.collectionView.frame.size.width * page;
    self.collectionView.contentOffset = offsetPoint;
    self.itemSize = CGSizeMake(self.collectionView.frame.size.width, self.collectionView.frame.size.height);
    self.minimumLineSpacing = 20;
   /*
    if (UIInterfaceOrientationIsLandscape(orientation)) {
    
        //LANDSCAPE
        //self.sectionInset = UIEdgeInsetsMake(<#CGFloat top#>, <#CGFloat left#>, <#CGFloat bottom#>, <#CGFloat right#>)
    }
    else
    {
        self.itemSize = CGSizeMake(self.collectionView.frame.size.width, self.collectionView.frame.size.height);
        
        // PORTRAIT
        // self.sectionInset = UIEdgeInsetsMake(0, 10, 0, 0);
    }*/
}
double page;
-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    page = self.collectionView.contentOffset.x/self.collectionView.frame.size.width;
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
