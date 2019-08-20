//
//  AFNetWorkUtils.h
//  HanTalk
//
//  Created by 曹云霄 on 2018/3/23.
//  Copyright © 2018年 上海韩创科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"
#import "ReactiveObjC.h"


static NSString *const errorInfoKey = @"errorInfoKey";

@interface NSErrorHelper : NSObject

+ (NSError *)createErrorWithUserInfo:(NSDictionary *)userInfo domain:(NSString *)domain code:(NSInteger)code;

@end

@interface AFNetWorkUtils : NSObject

/**
 轮询task任务
 */
@property (nonatomic, strong) NSURLSessionDataTask *requestTask;

/**
 单例模式

 @return AFNetWorkUtils
 */
+ (instancetype)shared;
+ (AFHTTPSessionManager *)sharedHTTPOperationManager;
+ (void)dealloc;

/**
 POST请求
 
 @param path path路径
 @return RACSignal
 */
+ (RACSignal *)racPOSTWthURL:(NSString *)path jsonStr:(NSString *)jsonStr;

/**
 POST请求
 
 @param path path路径
 @return RACSignal
 */
+ (RACSignal *)racPOSTWthURL:(NSString *)path params:(NSDictionary *)params;

/**
 POST请求
 
 @param path path路径
 @param clazz 解析类
 @return RACSignal
 */
+ (RACSignal *)racPOSTWithURL:(NSString *)path params:(NSDictionary *)params class:(Class)clazz;

/**
 GET请求
 
 @param path path路径
 @return RACSignal
 */
+ (RACSignal *)racGETWthURL:(NSString *)path params:(NSDictionary *)params;;

/**
 GET请求
 
 @param path path路径
 @return RACSignal
 */
+ (RACSignal *)racGETWthURL:(NSString *)path;

/**
 GET请求

 @param path path路径
 @param clazz 解析类
 @return RACSignal
 */
+ (RACSignal *)racGETWithURL:(NSString *)path class:(Class)clazz;

/**
 取消所有请求
 */
+ (void)cancelAllOperations;

///**
// 下载文件
// 
// @param path 下载路径
// @return RACSignal
// */
//+ (RACSignal *)racDownloadWithURL:(NSString *)path;
//
///**
// 轮询获得消息
// 
// @return RACSignal
// */
//- (RACSignal *)pollingGetMessage;
@end

















