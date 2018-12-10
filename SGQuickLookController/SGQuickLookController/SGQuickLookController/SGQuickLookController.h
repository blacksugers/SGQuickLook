//
//  SGQuickLookController.h
//  SGQuickLookController
//
//  Created by BlackSugar on 2018/12/10.
//  Copyright © 2018 Sugar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuickLook/QuickLook.h>
NS_ASSUME_NONNULL_BEGIN


@interface QLPreviewItemCustom : NSObject <QLPreviewItem>

@property (nonatomic,readwrite) NSURL * previewItemURL;

@property (nonatomic,readwrite) NSString * previewItemTitle;

@end

@interface SGQuickLookController : QLPreviewController

@property (nonatomic, strong)  NSURL * url; //文件路径

@property (nonatomic, copy) NSString * showName;//文件名字

/**
 初始化控制器

 @param url 文件路径
 @param showName 展示的名字
 @return SGQuickLookController
 */
- (SGQuickLookController *)initWithUrl:(NSURL *)url showName:(NSString *)showName;

/**
 工厂方法

 @param url 文件路径
 @param showName 展示名字
 @return SGQuickLookController对象
 */
+ (SGQuickLookController *)quickLookControllerWithUrl:(NSURL *)url showName:(NSString *)showName;

@end

NS_ASSUME_NONNULL_END
