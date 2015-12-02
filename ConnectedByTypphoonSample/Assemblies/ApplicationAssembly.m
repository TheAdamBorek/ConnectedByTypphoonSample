//
// Created by Adam Borek on 30.11.2015.
// Copyright (c) 2015 Adam Borek. All rights reserved.
//

#import "ApplicationAssembly.h"
#import "APIConnection.h"
#import "AFNetworkingAPIConnection.h"
#import "AppDelegate.h"
#import "SomeObject.h"
#import "TyphoonConfigPostProcessor.h"
#import "StoryboardAssembly.h"
#import "TyphoonDefinition+Infrastructure.h"


@implementation ApplicationAssembly

- (AppDelegate *)appDelegate{
    return [TyphoonDefinition withClass:[AppDelegate class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(someObjectNeededForSomething) with:[self someObject]];
        [definition injectProperty:@selector(storyboard) with:[self.storyboardAssembly mainStorybaord]];
    }];
}

- (SomeObject *)someObject {
    return [TyphoonDefinition withClass:[SomeObject class]];
}

- (id <APIConnection>)apiConnection {
    return [TyphoonDefinition withClass:[AFNetworkingAPIConnection class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(initWithBaseURL:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:TyphoonConfig(@"APIBaseURL")];
        }];
    }];
}

- (id)configurer {
    return [TyphoonDefinition
            configDefinitionWithName:@"TyphoonConfiguration.plist"];
}

@end