//
// Created by Adam Borek on 30.11.2015.
// Copyright (c) 2015 Adam Borek. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol APIRequest;


typedef void(^APIConnectionSuccessBlock)(NSURLSessionDataTask *task, id answer);
typedef void(^APIConnectionFailureBlock)(NSURLSessionDataTask *task, NSDictionary *answer, NSError *error);

@protocol APIConnection <NSObject>
- (NSURLSessionDataTask *)callAPIWithRequest:(id<APIRequest>)request success:(APIConnectionSuccessBlock)success failure:(APIConnectionFailureBlock)fail;
@end
