//
// Created by Adam Borek on 02.12.2015.
// Copyright (c) 2015 Adam Borek. All rights reserved.
//

#import "LoginAssembly.h"
#import "LoginViewController.h"
#import "StoryboardAssembly.h"
#import "ApplicationAssembly.h"
#import "LoginSystem.h"

@implementation LoginAssembly

- (LoginViewController *)loginViewController {
    return [TyphoonDefinition withClass:[LoginViewController class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(loginSystem) with:[self loginSystem]];
    }];
}

- (LoginSystem *)loginSystem {
    return [TyphoonDefinition withClass:[LoginSystem class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(initWithApiConnection:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:[self.applicationAssembly apiConnection]];
        }];

        [definition injectProperty:@selector(delegate) with:[self loginViewController]];
    }];
}


@end
