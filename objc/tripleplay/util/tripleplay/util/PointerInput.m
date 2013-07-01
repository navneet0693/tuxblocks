//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/util/PointerInput.java
//
//  Created by Thomas on 7/1/13.
//

#import "playn/core/Pointer.h"
#import "tripleplay/util/Input.h"

@implementation TripleplayUtilPointerInput

- (id<PlaynCorePointer_Listener>)plistener {
  return plistener_;
}
- (void)setPlistener:(id<PlaynCorePointer_Listener>)plistener {
  JreOperatorRetainedAssign(&plistener_, self, plistener);
}
@synthesize plistener = plistener_;

- (id<TripleplayUtilInput_Registration>)register__WithTripleplayUtilInput_Region:(TripleplayUtilInput_Region *)region
                                                                          withId:(id<PlaynCorePointer_Listener>)listener {
  return [((TripleplayUtilPointerInput_PointerReactor *) plistener_) register__WithTripleplayUtilInput_Region:region withId:listener];
}

- (id)init {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&plistener_, self, [[[TripleplayUtilPointerInput_PointerReactor alloc] initWithTripleplayUtilPointerInput:self] autorelease]);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&plistener_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUtilPointerInput *typedCopy = (TripleplayUtilPointerInput *) copy;
  typedCopy.plistener = plistener_;
}

@end
@implementation TripleplayUtilPointerInput_Action

- (void)onTrigger {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)onPointerStartWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
  [self onTrigger];
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  [super dealloc];
}

@end
@implementation TripleplayUtilPointerInput_PointerReactor

- (id<PlaynCorePointer_Listener>)_active {
  return _active_;
}
- (void)set_active:(id<PlaynCorePointer_Listener>)_active {
  JreOperatorRetainedAssign(&_active_, self, _active);
}
@synthesize _active = _active_;

- (void)onPointerStartWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
  JreOperatorRetainedAssign(&_active_, self, ((id<PlaynCorePointer_Listener>) [self hitTestWithPlaynCoreEvents_Position:event]));
  if (_active_ != nil) {
    [_active_ onPointerStartWithPlaynCorePointer_Event:event];
  }
}

- (void)onPointerDragWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
  if (_active_ != nil) {
    [_active_ onPointerDragWithPlaynCorePointer_Event:event];
  }
}

- (void)onPointerEndWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
  if (_active_ != nil) {
    [_active_ onPointerEndWithPlaynCorePointer_Event:event];
    JreOperatorRetainedAssign(&_active_, self, nil);
  }
}

- (void)onPointerCancelWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
  if (_active_ != nil) {
    [_active_ onPointerCancelWithPlaynCorePointer_Event:event];
    JreOperatorRetainedAssign(&_active_, self, nil);
  }
}

- (id)initWithTripleplayUtilPointerInput:(TripleplayUtilPointerInput *)outer$ {
  return [super init];
}

- (void)dealloc {
  JreOperatorRetainedAssign(&_active_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUtilPointerInput_PointerReactor *typedCopy = (TripleplayUtilPointerInput_PointerReactor *) copy;
  typedCopy._active = _active_;
}

@end