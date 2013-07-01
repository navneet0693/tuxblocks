//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/ClickableTextWidget.java
//
//  Created by Thomas on 7/1/13.
//

#import "playn/core/Pointer.h"
#import "tripleplay/ui/Element.h"
#import "tripleplay/ui/Widget.h"

@implementation TripleplayUiClickableTextWidget

- (id)init {
  if ((self = [super init])) {
    [self enableInteraction];
  }
  return self;
}

- (void)onPointerStartWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event
                                       withFloat:(float)x
                                       withFloat:(float)y {
  [super onPointerStartWithPlaynCorePointer_Event:event withFloat:x withFloat:y];
  if (![self isEnabled]) return;
  [self onPressWithPlaynCorePointer_Event:event];
}

- (void)onPointerDragWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event
                                      withFloat:(float)x
                                      withFloat:(float)y {
  [super onPointerDragWithPlaynCorePointer_Event:event withFloat:x withFloat:y];
  if (![self isEnabled]) return;
  [self onHoverWithPlaynCorePointer_Event:event withBOOL:[self containsWithFloat:x withFloat:y]];
}

- (void)onPointerEndWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event
                                     withFloat:(float)x
                                     withFloat:(float)y {
  [super onPointerEndWithPlaynCorePointer_Event:event withFloat:x withFloat:y];
  [self onReleaseWithPlaynCorePointer_Event:event];
}

- (void)onPointerCancelWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
  [super onPointerCancelWithPlaynCorePointer_Event:event];
  [self onCancelWithPlaynCorePointer_Event:event];
}

- (void)onPressWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
  [self setWithTripleplayUiElement_FlagEnum:[TripleplayUiElement_FlagEnum SELECTED] withBOOL:YES];
  [self invalidate];
}

- (void)onHoverWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event
                                 withBOOL:(BOOL)inBounds {
  if (inBounds != [self isSelected]) {
    [self setWithTripleplayUiElement_FlagEnum:[TripleplayUiElement_FlagEnum SELECTED] withBOOL:inBounds];
    [self invalidate];
  }
}

- (void)onReleaseWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
  if ([self isSelected]) {
    [self setWithTripleplayUiElement_FlagEnum:[TripleplayUiElement_FlagEnum SELECTED] withBOOL:NO];
    [self invalidate];
    [self onClickWithPlaynCorePointer_Event:event];
  }
}

- (void)onCancelWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
  if ([self isSelected]) {
    [self setWithTripleplayUiElement_FlagEnum:[TripleplayUiElement_FlagEnum SELECTED] withBOOL:NO];
    [self invalidate];
  }
}

- (void)onClickWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
}

- (void)dealloc {
  [super dealloc];
}

@end