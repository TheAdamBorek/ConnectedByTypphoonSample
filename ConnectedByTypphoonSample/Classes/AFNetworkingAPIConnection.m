//
// Created by Adam Borek on 30.11.2015.
// Copyright (c) 2015 Adam Borek. All rights reserved.
//

#import "AFNetworkingAPIConnection.h"


@implementation AFNetworkingAPIConnection
- (instancetype)initWithBaseURL:(NSURL *)baseURL {
    self = [super init];
    if (self) {
        self.baseURL = baseURL;
    }

    return self;
}

+ (instancetype)connectionWithBaseURL:(NSURL *)baseURL {
    return [[self alloc] initWithBaseURL:baseURL];
}


- (NSURLSessionDataTask *)callAPIWithRequest:(id <APIRequest>)request success:(APIConnectionSuccessBlock)success failure:(APIConnectionFailureBlock)fail {
    //Do connection stuff with afnetworking
    return nil;
}

@end