//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/util/Callback.java
//
//  Created by Thomas on 7/1/13.
//

#import "java/lang/Throwable.h"
#import "Callback.h"

@implementation PlaynCoreUtilCallback_Chain

- (id<PlaynCoreUtilCallback>)onFailure_ {
  return onFailure__;
}
- (void)setOnFailure_:(id<PlaynCoreUtilCallback>)onFailure_ {
  JreOperatorRetainedAssign(&onFailure__, self, onFailure_);
}
@synthesize onFailure_ = onFailure__;

- (id)initWithPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)onFailure {
  if ((self = [super init])) {
    self.onFailure_ = onFailure;
  }
  return self;
}

- (void)onFailureWithJavaLangThrowable:(JavaLangThrowable *)cause {
  [((id<PlaynCoreUtilCallback>) NIL_CHK(onFailure__)) onFailureWithJavaLangThrowable:cause];
}

- (void)onSuccessWithId:(id)param0 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)dealloc {
  JreOperatorRetainedAssign(&onFailure__, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreUtilCallback_Chain *typedCopy = (PlaynCoreUtilCallback_Chain *) copy;
  typedCopy.onFailure_ = onFailure__;
}

@end