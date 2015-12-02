//
// Created by Adam Borek on 30.11.2015.
// Copyright (c) 2015 Adam Borek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "APIConnection.h"


@interface AFNetworkingAPIConnection : NSObject <APIConnection>
@property(nonatomic, strong) NSURL *baseURL;

- (instancetype)initWithBaseURL:(NSURL *)baseURL;

+ (instancetype)connectionWithBaseURL:(NSURL *)baseURL;

@end