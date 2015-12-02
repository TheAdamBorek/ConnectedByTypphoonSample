//
// Created by Adam Borek on 30.11.2015.
// Copyright (c) 2015 Adam Borek. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol APIConnection;

@protocol LoginSystemDelegate <NSObject>
@end

@interface LoginSystem : NSObject
@property(nonatomic, strong) id <APIConnection> apiConnection;
@property (nonatomic, weak) id<LoginSystemDelegate> delegate;

- (instancetype)initWithApiConnection:(id <APIConnection>)apiConnection;
+ (instancetype)systemWithApiConnection:(id <APIConnection>)apiConnection;
@end