//
// Created by Adam Borek on 30.11.2015.
// Copyright (c) 2015 Adam Borek. All rights reserved.
//

#import "StoryboardAssembly.h"
#import "TyphoonStoryboard.h"


@implementation StoryboardAssembly

- (UIStoryboard *)mainStorybaord {
  return [TyphoonDefinition withClass:[TyphoonStoryboard class] configuration:^(TyphoonDefinition *definition) {
      [definition useInitializer:@selector(storyboardWithName:factory:bundle:) parameters:^(TyphoonMethod *initializer) {
          [initializer injectParameterWith:@"Main"];
          [initializer injectParameterWith:self];
          [initializer injectParameterWith:[NSBundle mainBundle]];
      }];
  }];
}

@end