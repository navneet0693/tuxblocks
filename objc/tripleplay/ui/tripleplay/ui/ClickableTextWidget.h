//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/ClickableTextWidget.java
//
//  Created by Thomas on 7/1/13.
//

@protocol PlaynCorePointer_Event;

#import "JreEmulation.h"
#import "tripleplay/ui/TextWidget.h"

@interface TripleplayUiClickableTextWidget : TripleplayUiTextWidget {
}

- (id)init;
- (void)onPointerStartWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event
                                       withFloat:(float)x
                                       withFloat:(float)y;
- (void)onPointerDragWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event
                                      withFloat:(float)x
                                      withFloat:(float)y;
- (void)onPointerEndWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event
                                     withFloat:(float)x
                                     withFloat:(float)y;
- (void)onPointerCancelWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
- (void)onPressWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
- (void)onHoverWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event
                                 withBOOL:(BOOL)inBounds;
- (void)onReleaseWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
- (void)onCancelWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
- (void)onClickWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
@end