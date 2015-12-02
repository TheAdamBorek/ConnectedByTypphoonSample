//
// Created by Adam Borek on 30.11.2015.
// Copyright (c) 2015 Adam Borek. All rights reserved.
//

#import "ApplicationAssembly.h"
#import "APIConnection.h"
#import "AFNetworkingAPIConnection.h"
#import "AppDelegate.h"
#import "SomeObject.h"


@implementation ApplicationAssembly

- (AppDelegate *)appDelegate{
    return [TyphoonDefinition withClass:[AppDelegate class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(someObjectNeededForSomething) with:[self someObject]];
    }];
}

- (SomeObject *)someObject {
    return [TyphoonDefinition withClass:[SomeObject class]];
}

- (id <APIConnection>)apiConnection {
    return [TyphoonDefinition withClass:[AFNetworkingAPIConnection class] configuration:^(TyphoonDefinition *definition) {

    }];
}


@end