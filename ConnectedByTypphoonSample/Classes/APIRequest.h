//
// Created by Adam Borek on 30.11.2015.
// Copyright (c) 2015 Adam Borek. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol APIRequest <NSObject>
- (NSDictionary *)additionalHeaders;
- (NSString*)RESTMethodName;
- (NSString*)apiMethodUrlPart;
- (NSDictionary *)params;
@end