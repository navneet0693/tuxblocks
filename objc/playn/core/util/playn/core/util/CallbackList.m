//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/util/CallbackList.java
//
//  Created by Thomas on 7/1/13.
//

#import "java/lang/IllegalStateException.h"
#import "java/lang/Throwable.h"
#import "java/util/ArrayList.h"
#import "java/util/Iterator.h"
#import "java/util/List.h"
#import "playn/core/util/Callback.h"

@implementation PlaynCoreUtilCallbackList

- (id<JavaUtilList>)callbacks {
  return callbacks_;
}
- (void)setCallbacks:(id<JavaUtilList>)callbacks {
  JreOperatorRetainedAssign(&callbacks_, self, callbacks);
}
@synthesize callbacks = callbacks_;

+ (PlaynCoreUtilCallbackList *)createWithPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)callback {
  PlaynCoreUtilCallbackList *list = [[[PlaynCoreUtilCallbackList alloc] init] autorelease];
  (void) [((PlaynCoreUtilCallbackList *) NIL_CHK(list)) addWithPlaynCoreUtilCallback:callback];
  return list;
}

- (PlaynCoreUtilCallbackList *)addWithPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)callback {
  [self checkState];
  [((id<JavaUtilList>) NIL_CHK(callbacks_)) addWithId:callback];
  return self;
}

- (void)removeWithPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)callback {
  [self checkState];
  [((id<JavaUtilList>) NIL_CHK(callbacks_)) removeWithId:callback];
}

- (void)onSuccessWithId:(id)result {
  [self checkState];
  {
    id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((id<JavaUtilList>) NIL_CHK(callbacks_)) iterator]);
    while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
      id<PlaynCoreUtilCallback> cb = ((id<PlaynCoreUtilCallback>) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
      [((id<PlaynCoreUtilCallback>) NIL_CHK(cb)) onSuccessWithId:result];
    }
  }
  JreOperatorRetainedAssign(&callbacks_, self, nil);
}

- (void)onFailureWithJavaLangThrowable:(JavaLangThrowable *)cause {
  [self checkState];
  {
    id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((id<JavaUtilList>) NIL_CHK(callbacks_)) iterator]);
    while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
      id<PlaynCoreUtilCallback> cb = ((id<PlaynCoreUtilCallback>) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
      [((id<PlaynCoreUtilCallback>) NIL_CHK(cb)) onFailureWithJavaLangThrowable:cause];
    }
  }
  JreOperatorRetainedAssign(&callbacks_, self, nil);
}

- (void)checkState {
  if (callbacks_ == nil) {
    @throw [[[JavaLangIllegalStateException alloc] initWithNSString:@"CallbackList has already fired."] autorelease];
  }
}

- (id)init {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&callbacks_, self, [[[JavaUtilArrayList alloc] init] autorelease]);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&callbacks_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreUtilCallbackList *typedCopy = (PlaynCoreUtilCallbackList *) copy;
  typedCopy.callbacks = callbacks_;
}

@end