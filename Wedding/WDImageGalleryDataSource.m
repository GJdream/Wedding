//
//  WDImageGalleryDataSource.m
//  Wedding
//
//  Created by Andrei on 2/6/14.
//  Copyright (c) 2014 phon-soft. All rights reserved.
//

#import "WDImageGalleryDataSource.h"
#import "AFNetworking/AFHTTPRequestOperation.h"
@implementation WDImageGalleryDataSource

-(id)init
{
    self = [super init];
    if (self) {
        self.mArray = [[NSMutableArray alloc]init];
        [self.mArray addObject:@"http://wallpapers.cc/files/walls/10076.jpg"];
        [self.mArray addObject:@"http://p1.pichost.me/i/38/1616127.jpg"];
        [self.mArray addObject:@"http://www.hdpaperz.com/wp-content/gallery/18_wallpaper_03/white_flowers_wallpaper_wide-wide.jpg"];
        [self.mArray addObject:@"http://www.freefever.com/stock/cool-wallpapers-butterfly-designs-hd-wallpaper.jpg"];
        [self.mArray addObject:@"http://www.hdwallpaperspin.com/wp-content/uploads/2013/05/Awesome-wallpaper-for-desktop.jpg"];
        [self.mArray addObject:@"http://www.hdpaperz.com/wp-content/gallery/1_wallpaper_01/3d-animals-wallpapers.jpg"];
        [self.mArray addObject:@"http://thesecretwallpapers.com/wp-content/uploads/2013/04/3D-wallpaper-download-116.jpg"];
        [self.mArray addObject:@"http://6269-9001.zippykid.netdna-cdn.com/wp-content/uploads/2013/08/Beautiful-Butterfly-Wallpapers.jpg"];
        [self.mArray addObject:@"http://wallpapers.cc/files/walls/10076.jpg"];
        [self.mArray addObject:@"http://p1.pichost.me/i/38/1616127.jpg"];
        [self.mArray addObject:@"http://www.hdpaperz.com/wp-content/gallery/18_wallpaper_03/white_flowers_wallpaper_wide-wide.jpg"];
        [self.mArray addObject:@"http://www.freefever.com/stock/cool-wallpapers-butterfly-designs-hd-wallpaper.jpg"];
        [self.mArray addObject:@"http://www.hdwallpaperspin.com/wp-content/uploads/2013/05/Awesome-wallpaper-for-desktop.jpg"];
        [self.mArray addObject:@"http://www.hdpaperz.com/wp-content/gallery/1_wallpaper_01/3d-animals-wallpapers.jpg"];
        [self.mArray addObject:@"http://thesecretwallpapers.com/wp-content/uploads/2013/04/3D-wallpaper-download-116.jpg"];
        [self.mArray addObject:@"http://6269-9001.zippykid.netdna-cdn.com/wp-content/uploads/2013/08/Beautiful-Butterfly-Wallpapers.jpg"];
        [self.mArray addObject:@"http://wallpapers.cc/files/walls/10076.jpg"];
        [self.mArray addObject:@"http://p1.pichost.me/i/38/1616127.jpg"];
        [self.mArray addObject:@"http://www.hdpaperz.com/wp-content/gallery/18_wallpaper_03/white_flowers_wallpaper_wide-wide.jpg"];
        [self.mArray addObject:@"http://www.freefever.com/stock/cool-wallpapers-butterfly-designs-hd-wallpaper.jpg"];
        [self.mArray addObject:@"http://www.hdwallpaperspin.com/wp-content/uploads/2013/05/Awesome-wallpaper-for-desktop.jpg"];
        [self.mArray addObject:@"http://www.hdpaperz.com/wp-content/gallery/1_wallpaper_01/3d-animals-wallpapers.jpg"];
        [self.mArray addObject:@"http://thesecretwallpapers.com/wp-content/uploads/2013/04/3D-wallpaper-download-116.jpg"];
        [self.mArray addObject:@"http://6269-9001.zippykid.netdna-cdn.com/wp-content/uploads/2013/08/Beautiful-Butterfly-Wallpapers.jpg"];
        [self.mArray addObject:@"http://wallpapers.cc/files/walls/10076.jpg"];
        [self.mArray addObject:@"http://p1.pichost.me/i/38/1616127.jpg"];
        [self.mArray addObject:@"http://www.hdpaperz.com/wp-content/gallery/18_wallpaper_03/white_flowers_wallpaper_wide-wide.jpg"];
        [self.mArray addObject:@"http://www.freefever.com/stock/cool-wallpapers-butterfly-designs-hd-wallpaper.jpg"];
        [self.mArray addObject:@"http://www.hdwallpaperspin.com/wp-content/uploads/2013/05/Awesome-wallpaper-for-desktop.jpg"];
        [self.mArray addObject:@"http://www.hdpaperz.com/wp-content/gallery/1_wallpaper_01/3d-animals-wallpapers.jpg"];
        [self.mArray addObject:@"http://thesecretwallpapers.com/wp-content/uploads/2013/04/3D-wallpaper-download-116.jpg"];
        [self.mArray addObject:@"http://6269-9001.zippykid.netdna-cdn.com/wp-content/uploads/2013/08/Beautiful-Butterfly-Wallpapers.jpg"];
        [self.mArray addObject:@"http://wallpapers.cc/files/walls/10076.jpg"];
        [self.mArray addObject:@"http://p1.pichost.me/i/38/1616127.jpg"];
        [self.mArray addObject:@"http://www.hdpaperz.com/wp-content/gallery/18_wallpaper_03/white_flowers_wallpaper_wide-wide.jpg"];
        [self.mArray addObject:@"http://www.freefever.com/stock/cool-wallpapers-butterfly-designs-hd-wallpaper.jpg"];
        [self.mArray addObject:@"http://www.hdwallpaperspin.com/wp-content/uploads/2013/05/Awesome-wallpaper-for-desktop.jpg"];
        [self.mArray addObject:@"http://www.hdpaperz.com/wp-content/gallery/1_wallpaper_01/3d-animals-wallpapers.jpg"];
        [self.mArray addObject:@"http://thesecretwallpapers.com/wp-content/uploads/2013/04/3D-wallpaper-download-116.jpg"];
        [self.mArray addObject:@"http://6269-9001.zippykid.netdna-cdn.com/wp-content/uploads/2013/08/Beautiful-Butterfly-Wallpapers.jpg"];
        [self.mArray addObject:@"http://wallpapers.cc/files/walls/10076.jpg"];
        [self.mArray addObject:@"http://p1.pichost.me/i/38/1616127.jpg"];
        [self.mArray addObject:@"http://www.hdpaperz.com/wp-content/gallery/18_wallpaper_03/white_flowers_wallpaper_wide-wide.jpg"];
        [self.mArray addObject:@"http://www.freefever.com/stock/cool-wallpapers-butterfly-designs-hd-wallpaper.jpg"];
        [self.mArray addObject:@"http://www.hdwallpaperspin.com/wp-content/uploads/2013/05/Awesome-wallpaper-for-desktop.jpg"];
        [self.mArray addObject:@"http://www.hdpaperz.com/wp-content/gallery/1_wallpaper_01/3d-animals-wallpapers.jpg"];
        [self.mArray addObject:@"http://thesecretwallpapers.com/wp-content/uploads/2013/04/3D-wallpaper-download-116.jpg"];
        [self.mArray addObject:@"http://6269-9001.zippykid.netdna-cdn.com/wp-content/uploads/2013/08/Beautiful-Butterfly-Wallpapers.jpg"];
        [self.mArray addObject:@"http://wallpapers.cc/files/walls/10076.jpg"];
        [self.mArray addObject:@"http://p1.pichost.me/i/38/1616127.jpg"];
        [self.mArray addObject:@"http://www.hdpaperz.com/wp-content/gallery/18_wallpaper_03/white_flowers_wallpaper_wide-wide.jpg"];
        [self.mArray addObject:@"http://www.freefever.com/stock/cool-wallpapers-butterfly-designs-hd-wallpaper.jpg"];
        [self.mArray addObject:@"http://www.hdwallpaperspin.com/wp-content/uploads/2013/05/Awesome-wallpaper-for-desktop.jpg"];
        [self.mArray addObject:@"http://www.hdpaperz.com/wp-content/gallery/1_wallpaper_01/3d-animals-wallpapers.jpg"];
        [self.mArray addObject:@"http://thesecretwallpapers.com/wp-content/uploads/2013/04/3D-wallpaper-download-116.jpg"];
        [self.mArray addObject:@"http://6269-9001.zippykid.netdna-cdn.com/wp-content/uploads/2013/08/Beautiful-Butterfly-Wallpapers.jpg"];
        [self.mArray addObject:@"http://wallpapers.cc/files/walls/10076.jpg"];
        [self.mArray addObject:@"http://p1.pichost.me/i/38/1616127.jpg"];
        [self.mArray addObject:@"http://www.hdpaperz.com/wp-content/gallery/18_wallpaper_03/white_flowers_wallpaper_wide-wide.jpg"];
        [self.mArray addObject:@"http://www.freefever.com/stock/cool-wallpapers-butterfly-designs-hd-wallpaper.jpg"];
        [self.mArray addObject:@"http://www.hdwallpaperspin.com/wp-content/uploads/2013/05/Awesome-wallpaper-for-desktop.jpg"];
        [self.mArray addObject:@"http://www.hdpaperz.com/wp-content/gallery/1_wallpaper_01/3d-animals-wallpapers.jpg"];
        [self.mArray addObject:@"http://thesecretwallpapers.com/wp-content/uploads/2013/04/3D-wallpaper-download-116.jpg"];
        [self.mArray addObject:@"http://6269-9001.zippykid.netdna-cdn.com/wp-content/uploads/2013/08/Beautiful-Butterfly-Wallpapers.jpg"];
        [self.mArray addObject:@"http://wallpapers.cc/files/walls/10076.jpg"];
        [self.mArray addObject:@"http://p1.pichost.me/i/38/1616127.jpg"];
        [self.mArray addObject:@"http://www.hdpaperz.com/wp-content/gallery/18_wallpaper_03/white_flowers_wallpaper_wide-wide.jpg"];
        [self.mArray addObject:@"http://www.freefever.com/stock/cool-wallpapers-butterfly-designs-hd-wallpaper.jpg"];
        [self.mArray addObject:@"http://www.hdwallpaperspin.com/wp-content/uploads/2013/05/Awesome-wallpaper-for-desktop.jpg"];
        [self.mArray addObject:@"http://www.hdpaperz.com/wp-content/gallery/1_wallpaper_01/3d-animals-wallpapers.jpg"];
        [self.mArray addObject:@"http://thesecretwallpapers.com/wp-content/uploads/2013/04/3D-wallpaper-download-116.jpg"];
        [self.mArray addObject:@"http://6269-9001.zippykid.netdna-cdn.com/wp-content/uploads/2013/08/Beautiful-Butterfly-Wallpapers.jpg"];
        [self.mArray addObject:@"http://wallpapers.cc/files/walls/10076.jpg"];
        [self.mArray addObject:@"http://p1.pichost.me/i/38/1616127.jpg"];
        [self.mArray addObject:@"http://www.hdpaperz.com/wp-content/gallery/18_wallpaper_03/white_flowers_wallpaper_wide-wide.jpg"];
        [self.mArray addObject:@"http://www.freefever.com/stock/cool-wallpapers-butterfly-designs-hd-wallpaper.jpg"];
        [self.mArray addObject:@"http://www.hdwallpaperspin.com/wp-content/uploads/2013/05/Awesome-wallpaper-for-desktop.jpg"];
        [self.mArray addObject:@"http://www.hdpaperz.com/wp-content/gallery/1_wallpaper_01/3d-animals-wallpapers.jpg"];
        [self.mArray addObject:@"http://thesecretwallpapers.com/wp-content/uploads/2013/04/3D-wallpaper-download-116.jpg"];
        [self.mArray addObject:@"http://6269-9001.zippykid.netdna-cdn.com/wp-content/uploads/2013/08/Beautiful-Butterfly-Wallpapers.jpg"];
        [self.mArray addObject:@"http://wallpapers.cc/files/walls/10076.jpg"];
        [self.mArray addObject:@"http://p1.pichost.me/i/38/1616127.jpg"];
        [self.mArray addObject:@"http://www.hdpaperz.com/wp-content/gallery/18_wallpaper_03/white_flowers_wallpaper_wide-wide.jpg"];
        [self.mArray addObject:@"http://www.freefever.com/stock/cool-wallpapers-butterfly-designs-hd-wallpaper.jpg"];
        [self.mArray addObject:@"http://www.hdwallpaperspin.com/wp-content/uploads/2013/05/Awesome-wallpaper-for-desktop.jpg"];
        [self.mArray addObject:@"http://www.hdpaperz.com/wp-content/gallery/1_wallpaper_01/3d-animals-wallpapers.jpg"];
        [self.mArray addObject:@"http://thesecretwallpapers.com/wp-content/uploads/2013/04/3D-wallpaper-download-116.jpg"];
        [self.mArray addObject:@"http://6269-9001.zippykid.netdna-cdn.com/wp-content/uploads/2013/08/Beautiful-Butterfly-Wallpapers.jpg"];
        [self.mArray addObject:@"http://wallpapers.cc/files/walls/10076.jpg"];
        [self.mArray addObject:@"http://p1.pichost.me/i/38/1616127.jpg"];
        [self.mArray addObject:@"http://www.hdpaperz.com/wp-content/gallery/18_wallpaper_03/white_flowers_wallpaper_wide-wide.jpg"];
        [self.mArray addObject:@"http://www.freefever.com/stock/cool-wallpapers-butterfly-designs-hd-wallpaper.jpg"];
        [self.mArray addObject:@"http://www.hdwallpaperspin.com/wp-content/uploads/2013/05/Awesome-wallpaper-for-desktop.jpg"];
        [self.mArray addObject:@"http://www.hdpaperz.com/wp-content/gallery/1_wallpaper_01/3d-animals-wallpapers.jpg"];
        [self.mArray addObject:@"http://thesecretwallpapers.com/wp-content/uploads/2013/04/3D-wallpaper-download-116.jpg"];
        [self.mArray addObject:@"http://6269-9001.zippykid.netdna-cdn.com/wp-content/uploads/2013/08/Beautiful-Butterfly-Wallpapers.jpg"];
    }
    return self;
}
-(NSInteger)numberOfImagesWDImageGallery:(WDImageGallery *)ImageGallery
{
    return self.mArray.count;
}
-(void)WDImageGallery:(WDImageGallery *)ImageGallery ImageAtIndexPath:(NSIndexPath *)index withCallback:(ImageReadyCallback)callback
{
    NSString *string = [self.mArray objectAtIndex:index.row];
    NSURL *url = [NSURL URLWithString:string];
    NSURLRequest *request = [[NSURLRequest alloc]initWithURL:url];
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc]initWithRequest:request];
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        callback([UIImage imageWithData:responseObject]);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@",error);
    }];
    [operation start];
    NSLog(@"%@",string);
}
@end
