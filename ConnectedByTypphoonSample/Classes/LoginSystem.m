//
// Created by Adam Borek on 30.11.2015.
// Copyright (c) 2015 Adam Borek. All rights reserved.
//

#import "LoginSystem.h"
#import "APIConnection.h"


@implementation LoginSystem
- (instancetype)initWithApiConnection:(id <APIConnection>)apiConnection {
    self = [super init];
    if (self) {
        self.apiConnection = apiConnection;
    }

    return self;
}

+ (instancetype)systemWithApiConnection:(id <APIConnection>)apiConnection {
    return [[self alloc] initWithApiConnection:apiConnection];
}

@end