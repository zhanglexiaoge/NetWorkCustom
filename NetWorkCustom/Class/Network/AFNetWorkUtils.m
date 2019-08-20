//
//  AFNetWorkUtils.h
//  HanTalk
//
//  Created by 曹云霄 on 2018/3/23.
//  Copyright © 2018年 上海韩创科技有限公司. All rights reserved.
//

#import "AFNetWorkUtils.h"
#import "JSONModel.h"


@implementation NSErrorHelper

+ (NSError *)createErrorWithUserInfo:(NSDictionary *)userInfo domain:(NSString *)domain code:(NSInteger)code {
    return [NSError errorWithDomain:domain ?: @"http://NSErrorHelper" code:code userInfo:userInfo];
}

@end

@implementation AFNetWorkUtils

+ (instancetype)shared {
    static dispatch_once_t onceToken;
    static AFNetWorkUtils *manager = nil;
    dispatch_once(&onceToken, ^{
        manager = [[AFNetWorkUtils alloc] init];
    });
    return manager;
}

/**
 * 创建网络请求管理类单例对象
 */
static dispatch_once_t pred;
static AFHTTPSessionManager *manager = nil;
+ (AFHTTPSessionManager *)sharedHTTPOperationManager {
    dispatch_once(&pred, ^{
        NSURLCache *URLCache = [[NSURLCache alloc] initWithMemoryCapacity:4 * 1024 * 1024 diskCapacity:20 * 1024 * 1024 diskPath:nil];
        [NSURLCache setSharedURLCache:URLCache];
        NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
        config.HTTPMaximumConnectionsPerHost = 10;
        config.timeoutIntervalForRequest = 10.0f;
        manager = [[AFHTTPSessionManager alloc] initWithSessionConfiguration:config];
        manager.requestSerializer = [AFJSONRequestSerializer serializer];
        manager.responseSerializer = [AFJSONResponseSerializer serializer];
        [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
        //无条件的信任服务器上的证书
        AFSecurityPolicy *securityPolicy =  [AFSecurityPolicy defaultPolicy];
        // 客户端是否信任非法证书
        securityPolicy.allowInvalidCertificates = YES;
        // 是否在证书域字段中验证域名
        securityPolicy.validatesDomainName = NO;
        manager.securityPolicy = securityPolicy;
        [manager.requestSerializer setValue:[NSString stringWithFormat:@"ios.%@",[UIDevice version]] forHTTPHeaderField:@"HC-ACCESS-VERSION"];
//        [manager.requestSerializer setValue:[FCUUID uuidForDevice] forHTTPHeaderField:@"HC-ACCESS-UUID"];
    });
//    if (KUSER_TOKEN != nil && ![manager.requestSerializer.HTTPRequestHeaders objectForKey:@"HC-ACCESS-TOKEN"]) {
//        [manager.requestSerializer setValue:KUSER_TOKEN forHTTPHeaderField:@"HC-ACCESS-TOKEN"];
//    }
    return manager;
}

+ (void)dealloc {
    pred = 0;
    manager = nil;
}

+ (NSString *)requestPath:(NSString *)path {
    return [NSString stringWithFormat:@"%@/%@",@"https://test-hantalk.hanmaker.com",path];
}

+ (RACSignal *)racPOSTWthURL:(NSString *)path jsonStr:(NSString *)jsonStr{
    return [RACSignal createSignal:^RACDisposable *(id <RACSubscriber> subscriber) {
        AFHTTPSessionManager *manager = [self sharedHTTPOperationManager];
        NSURLSessionDataTask *task = [manager POST:[self requestPath:path] parameters:jsonStr progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            [self handleResultWithSubscriber:(id <RACSubscriber>) subscriber operation:task responseObject:responseObject];
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            [self handleErrorResultWithSubscriber:(id <RACSubscriber>) subscriber operation:task error:error];
        }];
        return [RACDisposable disposableWithBlock:^{
            [task cancel];
        }];
    }];
}

+ (RACSignal *)racPOSTWthURL:(NSString *)path params:(NSDictionary *)params {
    return [RACSignal createSignal:^RACDisposable *(id <RACSubscriber> subscriber) {
        AFHTTPSessionManager *manager = [self sharedHTTPOperationManager];
        NSURLSessionDataTask *task = [manager POST:[self requestPath:path] parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            [self handleResultWithSubscriber:(id <RACSubscriber>) subscriber operation:task responseObject:responseObject];
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            [self handleErrorResultWithSubscriber:(id <RACSubscriber>) subscriber operation:task error:error];
        }];
        return [RACDisposable disposableWithBlock:^{
            [task cancel];
        }];
    }];
}

+ (RACSignal *)racGETWthURL:(NSString *)path {
    return [self racGETWthUrl:path params:nil];
}

+ (RACSignal *)racGETWthURL:(NSString *)path params:(NSDictionary *)params {
    return [self racGETWthUrl:path params:params];
}

+ (RACSignal *)racGETWthUrl:(NSString *)path params:(NSDictionary *)params {
    return [RACSignal createSignal:^RACDisposable *(id <RACSubscriber> subscriber) {
        AFHTTPSessionManager *manager = [self sharedHTTPOperationManager];
        NSURLSessionDataTask *task = [manager GET:[self requestPath:path] parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            [self handleResultWithSubscriber:(id <RACSubscriber>) subscriber operation:task responseObject:responseObject];
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            [self handleErrorResultWithSubscriber:(id <RACSubscriber>) subscriber operation:task error:error];
        }];
        return [RACDisposable disposableWithBlock:^{
            [task cancel];
        }];
    }];
}

/**
 *  响应式post请求 返回处理后的结果 对象类型 可重用
 *
 *  @param path   请求地址
 *  @param params 请求参数
 *  @param clazz  字典对应的对象
 *
 *  @return 带请求结果（对象）的信号
 */
+ (RACSignal *)racPOSTWithURL:(NSString *)path params:(NSDictionary *)params class:(Class)clazz {
    return [[self racPOSTWthURL:path params:params] map:^id(id responseObject) {
        return [[clazz alloc] initWithDictionary:responseObject error:nil];
    }];
}

+ (RACSignal *)racGETWithURL:(NSString *)path class:(Class)clazz {
    return [[self racGETWthURL:path] map:^id(id responseObject) {
        return [[clazz alloc] initWithDictionary:responseObject error:nil];
    }];
}

/** 
 统一解析数据
 */
+ (void)handleResultWithSubscriber:(id <RACSubscriber>)subscriber operation:(NSURLSessionDataTask *)operation responseObject:(id)responseObject {
    NSInteger status = [[responseObject objectForKey:@"code"] integerValue];
    if (status == 200) {
//        if ([HTRealReachability shareManager].status == RealStatusUnknown || [HTRealReachability shareManager].status == RealStatusNotReachable) {
//            //网络请求成功后，默认WIFI状态
//            [HTRealReachability shareManager].status = RealStatusViaWiFi;
//        }
        [subscriber sendNext:responseObject];
        [subscriber sendCompleted];
//        HTLog(@"请求api成功->%@",operation.currentRequest.URL.absoluteString);
    }else if (status == 401) {
//        NSLog(@"账号异常,请重新登录 %@",responseObject);
//        ShowMessage(@"账号异常,请重新登录");
//        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//            if (![kWindow.rootViewController isKindOfClass: [NSClassFromString(@"HTLoginViewController") class]]) {
//                [[AppManager shareManager] loginOutAction];
//                [[AppManager shareManager] openLoginVc];
//            }
//        });
    }else {
        NSMutableDictionary *userInfo = [NSMutableDictionary dictionary];
        NSString *errorInfo = [responseObject objectForKey:@"message"];
        userInfo[errorInfoKey] = errorInfo;
        NSError * error = [NSErrorHelper createErrorWithUserInfo:userInfo domain:nil code:status];
        [subscriber sendError:error];
    }
}

+ (void)handleErrorResultWithSubscriber:(id <RACSubscriber>)subscriber operation:(NSURLSessionDataTask *)operation error:(NSError *)error {
    if (![error isKindOfClass:[NSError class]]) {
        [subscriber sendError:[NSErrorHelper createErrorWithUserInfo:@{errorInfoKey : @"未知错误"} domain:nil code:0]];
        return;
    }
    NSMutableDictionary *userInfo = error.userInfo ? [error.userInfo mutableCopy] : [NSMutableDictionary dictionary];
    userInfo[errorInfoKey] = error.localizedDescription;
    [subscriber sendError:[NSErrorHelper createErrorWithUserInfo:userInfo domain:nil code:error.code]];
}


/**
 取消所有请求errorInfoKey
 */
+ (void)cancelAllOperations {
    AFHTTPSessionManager *manager = [self sharedHTTPOperationManager];
    [manager.operationQueue cancelAllOperations];
}

///**
// 下载文件(同时返回进度和文件路径，需要自己判断类型)
//
// @param path 下载路径
// @return RACSignal
// */
//+ (RACSignal *)racDownloadWithURL:(NSString *)path {
//    return [RACSignal createSignal:^RACDisposable *(id <RACSubscriber> subscriber) {
//        AFHTTPSessionManager *manager = [self sharedHTTPOperationManager];
//        NSString *pathString = [Utility urlString:path];
//        NSURLSessionDownloadTask *task = [manager downloadTaskWithRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:pathString]] progress:^(NSProgress * _Nonnull downloadProgress) {
//            CGFloat progress = 1.0 * downloadProgress.completedUnitCount / downloadProgress.totalUnitCount;
//            [subscriber sendNext:@(progress)];
//        } destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
//            NSURL *filePath = [Utility filePathWithName:[NSString stringWithFormat:@"%@",[path lastPathComponent]]];
//            return filePath;
//        } completionHandler:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {
//            if (error) {
//                [subscriber sendError:error];
//            }else{
//                [subscriber sendNext:filePath];
//            }
//            [subscriber sendCompleted];
//        }];
//        [task resume];
//        return nil;
//    }];
//}
//

///**
// 轮询获得消息
// */
//- (RACSignal *)pollingGetMessage {
//    @weakify(self);
//    return [RACSignal createSignal:^RACDisposable *(id <RACSubscriber> subscriber) {
//        AFHTTPSessionManager *manager = [AFNetWorkUtils sharedHTTPOperationManager];
//        NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
//        config.timeoutIntervalForRequest = 10.0f;
//        manager = [[AFHTTPSessionManager alloc] initWithBaseURL:[NSURL URLWithString:BaseUrl] sessionConfiguration:config];
//        if (KUSER_TOKEN != nil) {
//            [manager.requestSerializer setValue:KUSER_TOKEN forHTTPHeaderField:@"HC-ACCESS-TOKEN"];
//            [manager.requestSerializer setValue:[NSString stringWithFormat:@"iOS%@",[UIDevice version]] forHTTPHeaderField:@"HC-ACCESS-VERSION"];
//        }
//        @strongify(self);
//        if (!self.requestTask && [AppManager shareManager].userIdentifying) {
//            NSDictionary *dict = @{@"client": [[AppManager shareManager] userIdentifying]};
//            NSURLSessionDataTask *task = [manager POST:GetNewMessage parameters:dict progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//                @strongify(self);
//                self.requestTask = nil;
//                [subscriber sendNext:responseObject];
//                [subscriber sendCompleted];
//            } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//                @strongify(self);
//                self.requestTask = nil;
//                [subscriber sendError:error];
//            }];
//            self.requestTask = task;
//        }
//        return nil;
//    }];
//}






















@end
