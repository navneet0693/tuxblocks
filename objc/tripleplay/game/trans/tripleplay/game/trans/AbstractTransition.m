//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/game/trans/AbstractTransition.java
//
//  Created by Thomas on 7/1/13.
//

#import "IOSObjectArray.h"
#import "java/lang/Runnable.h"
#import "playn/core/Asserts.h"
#import "tripleplay/game/Screen.h"
#import "tripleplay/game/ScreenStack.h"

@implementation TripleplayGameTransAbstractTransition

@synthesize _duration = _duration_;
- (id<JavaLangRunnable>)_onStart {
  return _onStart_;
}
- (void)set_onStart:(id<JavaLangRunnable>)_onStart {
  JreOperatorRetainedAssign(&_onStart_, self, _onStart);
}
@synthesize _onStart = _onStart_;
- (id<JavaLangRunnable>)_onComplete {
  return _onComplete_;
}
- (void)set_onComplete:(id<JavaLangRunnable>)_onComplete {
  JreOperatorRetainedAssign(&_onComplete_, self, _onComplete);
}
@synthesize _onComplete = _onComplete_;

- (id)durationWithFloat:(float)duration {
  _duration_ = duration;
  return [self asT];
}

- (id)onStartWithJavaLangRunnable:(id<JavaLangRunnable>)action {
  [PlaynCoreAsserts checkStateWithBOOL:_onStart_ == nil withId:@"onStart action already configured."];
  JreOperatorRetainedAssign(&_onStart_, self, action);
  return [self asT];
}

- (id)onCompleteWithJavaLangRunnable:(id<JavaLangRunnable>)action {
  [PlaynCoreAsserts checkStateWithBOOL:_onComplete_ == nil withId:@"onComplete action already configured."];
  JreOperatorRetainedAssign(&_onComplete_, self, action);
  return [self asT];
}

- (void)init__WithTripleplayGameScreen:(TripleplayGameScreen *)oscreen
              withTripleplayGameScreen:(TripleplayGameScreen *)nscreen OBJC_METHOD_FAMILY_NONE {
  if (_onStart_ != nil) {
    [_onStart_ run];
  }
}

- (void)completeWithTripleplayGameScreen:(TripleplayGameScreen *)oscreen
                withTripleplayGameScreen:(TripleplayGameScreen *)nscreen {
  if (_onComplete_ != nil) {
    [_onComplete_ run];
  }
}

- (id)asT {
  return (TripleplayGameTransAbstractTransition *) self;
}

- (float)defaultDuration {
  return 1000;
}

- (BOOL)updateWithTripleplayGameScreen:(TripleplayGameScreen *)param0
              withTripleplayGameScreen:(TripleplayGameScreen *)param1
                             withFloat:(float)param2 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)init {
  if ((self = [super init])) {
    _duration_ = [self defaultDuration];
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&_onComplete_, self, nil);
  JreOperatorRetainedAssign(&_onStart_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayGameTransAbstractTransition *typedCopy = (TripleplayGameTransAbstractTransition *) copy;
  typedCopy._duration = _duration_;
  typedCopy._onStart = _onStart_;
  typedCopy._onComplete = _onComplete_;
}

@end