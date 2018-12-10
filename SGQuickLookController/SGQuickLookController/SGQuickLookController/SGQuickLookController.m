//
//  SGQuickLookController.m
//  SGQuickLookController
//
//  Created by BlackSugar on 2018/12/10.
//  Copyright © 2018 Sugar. All rights reserved.
//

#import "SGQuickLookController.h"

@implementation QLPreviewItemCustom

@end

@interface SGQuickLookController ()<QLPreviewControllerDataSource,QLPreviewControllerDelegate>

@end

@implementation SGQuickLookController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (SGQuickLookController *)initWithUrl:(NSURL *)url showName:(NSString *)showName{
    self = [super init];
    if (self) {
        self.url = url;
        self.showName = showName;
        self.delegate = self;
        self.dataSource = self;
        [self setCurrentPreviewItemIndex:0];
    }
    return self;
}

+ (SGQuickLookController *)quickLookControllerWithUrl:(NSURL *)url showName:(NSString *)showName{
    return [[self alloc] initWithUrl:url showName:showName];
}

#pragma mark - QLPreviewControllerDataSource
-(NSInteger)numberOfPreviewItemsInPreviewController:(QLPreviewController *)controller{
    return 1;
}
- (id <QLPreviewItem>)previewController:(QLPreviewController *)controller previewItemAtIndex:(NSInteger)index {
    QLPreviewItemCustom * previewItem = [QLPreviewItemCustom new];
    
    previewItem.previewItemTitle = self.showName;
    
    previewItem.previewItemURL = self.url;
    
    return previewItem;
}

#pragma mark - QLPreviewControllerDelegate

- (void)previewControllerWillDismiss:(QLPreviewController *)controller {
    NSLog(@"previewControllerWillDismiss");
}

- (void)previewControllerDidDismiss:(QLPreviewController *)controller {
    NSLog(@"previewControllerDidDismiss");
}

- (BOOL)previewController:(QLPreviewController *)controller shouldOpenURL:(NSURL *)url forPreviewItem:(id <QLPreviewItem>)item{
    return YES;
}

- (CGRect)previewController:(QLPreviewController *)controller frameForPreviewItem:(id <QLPreviewItem>)item inSourceView:(UIView * __nullable * __nonnull)view{
    return CGRectZero;
}


@end
