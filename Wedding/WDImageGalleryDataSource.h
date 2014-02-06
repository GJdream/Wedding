//
//  WDImageGalleryDataSource.h
//  Wedding
//
//  Created by Andrei on 2/6/14.
//  Copyright (c) 2014 phon-soft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WDImageGallery.h"
@interface WDImageGalleryDataSource : NSObject <WDImageGalleryDataSource>
@property(nonatomic,retain)NSMutableArray *mArray;
@end
