//
//  WDPhotoGalleryVC.m
//  Wedding
//
//  Created by Andrei on 2/6/14.
//  Copyright (c) 2014 phon-soft. All rights reserved.
//

#import "WDPhotoGalleryVC.h"
#import "WDImageGalleryLayout.h"
@interface WDPhotoGalleryVC ()

@end

@implementation WDPhotoGalleryVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.mDataSource = [[WDImageGalleryDataSource alloc]init];
    [self.mPhotoGallery registerClass:[WDImageGalleryCell class] forCellWithReuseIdentifier:@"WDImageCell"];
    [self.mPhotoGallery setGalleryDataSource:self.mDataSource];
    [self.mPhotoGallery setDataSource:self.mPhotoGallery];
    [self.mPhotoGallery setDelegate:self.mPhotoGallery];

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    if ([self.mPhotoGallery.collectionViewLayout isKindOfClass:[WDImageGalleryLayout class]]) {
        WDImageGalleryLayout *layout = (WDImageGalleryLayout*) self.mPhotoGallery.collectionViewLayout;
        [layout willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
    }
}
-(void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
    if ([self.mPhotoGallery.collectionViewLayout isKindOfClass:[WDImageGalleryLayout class]]) {
        WDImageGalleryLayout *layout = (WDImageGalleryLayout*) self.mPhotoGallery.collectionViewLayout;
        [layout didRotateToOrientation:self.interfaceOrientation];
    }
}
@end
