# SGQuickLookController
### 功能：浏览本地文件
### 继承QLPreviewController的自定义控制器

#### 使用方法
    NSString * filePath = @"文件地址";
    NSString * showName = @"展示标题";
    SGQuickLookController * quickLookController = [SGQuickLookController quickLookControllerWithUrl:[NSURL fileURLWithPath:filePath] showName:showName];
    [self presentViewController:quickLookController animated:YES completion:nil];

#### 结语
    爱你😘
