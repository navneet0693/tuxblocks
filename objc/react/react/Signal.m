//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: react/Signal.java
//
//  Created by Thomas on 7/1/13.
//

#import "react/AbstractSignal.h"
#import "react/Slot.h"

@implementation ReactSignal

+ (ReactSignal *)create {
  return [[[ReactSignal alloc] init] autorelease];
}

- (void)emitWithId:(id)event {
  [self notifyEmitWithId:event];
}

- (ReactSlot *)slot {
  return [[[ReactSignal_$1 alloc] initWithReactSignal:self] autorelease];
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  [super dealloc];
}

@end
@implementation ReactSignal_$1

- (ReactSignal *)this$0 {
  return this$0_;
}
- (void)setThis$0:(ReactSignal *)this$0 {
  JreOperatorRetainedAssign(&this$0_, self, this$0);
}
@synthesize this$0 = this$0_;

- (void)onEmitWithId:(id)value {
  [this$0_ emitWithId:value];
}

- (id)initWithReactSignal:(ReactSignal *)outer$ {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&this$0_, self, outer$);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&this$0_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ReactSignal_$1 *typedCopy = (ReactSignal_$1 *) copy;
  typedCopy.this$0 = this$0_;
}

@end