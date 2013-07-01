//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/anim/AnimBuilder.java
//
//  Created by Thomas on 7/1/13.
//

@class ReactValue;
@class TripleplayAnimAnimation;
@class TripleplayAnimAnimation_Action;
@class TripleplayAnimAnimation_Delay;
@class TripleplayAnimAnimation_Flip;
@class TripleplayAnimAnimation_One;
@class TripleplayAnimAnimation_Shake;
@class TripleplayAnimAnimation_Two;
@class TripleplayAnimFlipbook;
@protocol PlaynCoreGroupLayer;
@protocol PlaynCoreImageLayer;
@protocol PlaynCoreLayer;
@protocol PlaynCoreSound;
@protocol PythagorasFXY;
@protocol TripleplaySoundPlayable;

#import "JreEmulation.h"
#import "java/lang/Runnable.h"
#import "tripleplay/anim/Animation.h"

@interface TripleplayAnimAnimBuilder : NSObject {
}

- (id)addWithId:(TripleplayAnimAnimation *)anim;
- (TripleplayAnimAnimation_Two *)tweenTranslationWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer;
- (TripleplayAnimAnimation_Two *)tweenXYWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer;
- (TripleplayAnimAnimation_One *)tweenXWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer;
- (TripleplayAnimAnimation_One *)tweenYWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer;
- (TripleplayAnimAnimation_One *)tweenRotationWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer;
- (TripleplayAnimAnimation_One *)tweenScaleWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer;
- (TripleplayAnimAnimation_Two *)tweenScaleXYWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer;
- (TripleplayAnimAnimation_One *)tweenScaleXWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer;
- (TripleplayAnimAnimation_One *)tweenScaleYWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer;
- (TripleplayAnimAnimation_One *)tweenAlphaWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer;
- (TripleplayAnimAnimation_One *)tweenWithTripleplayAnimAnimation_Value:(id<TripleplayAnimAnimation_Value>)value;
- (TripleplayAnimAnimation_Flip *)flipbookWithPlaynCoreImageLayer:(id<PlaynCoreImageLayer>)layer
                                       withTripleplayAnimFlipbook:(TripleplayAnimFlipbook *)book;
- (TripleplayAnimAnimation_Flip *)flipbookWithPlaynCoreGroupLayer:(id<PlaynCoreGroupLayer>)box
                                       withTripleplayAnimFlipbook:(TripleplayAnimFlipbook *)book;
- (TripleplayAnimAnimation *)flipbookAtWithPlaynCoreGroupLayer:(id<PlaynCoreGroupLayer>)parent
                                                     withFloat:(float)x
                                                     withFloat:(float)y
                                    withTripleplayAnimFlipbook:(TripleplayAnimFlipbook *)book;
- (TripleplayAnimAnimation *)flipbookAtWithPlaynCoreGroupLayer:(id<PlaynCoreGroupLayer>)parent
                                             withPythagorasFXY:(id<PythagorasFXY>)pos
                                    withTripleplayAnimFlipbook:(TripleplayAnimFlipbook *)book;
- (TripleplayAnimAnimation_Shake *)shakeWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer;
- (TripleplayAnimAnimation_Delay *)delayWithFloat:(float)duration;
- (TripleplayAnimAnimBuilder *)repeatWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer;
- (TripleplayAnimAnimation_Action *)actionWithJavaLangRunnable:(id<JavaLangRunnable>)action;
- (TripleplayAnimAnimation_Action *)addWithPlaynCoreGroupLayer:(id<PlaynCoreGroupLayer>)parent
                                            withPlaynCoreLayer:(id<PlaynCoreLayer>)child;
- (TripleplayAnimAnimation_Action *)addAtWithPlaynCoreGroupLayer:(id<PlaynCoreGroupLayer>)parent
                                              withPlaynCoreLayer:(id<PlaynCoreLayer>)child
                                               withPythagorasFXY:(id<PythagorasFXY>)pos;
- (TripleplayAnimAnimation_Action *)addAtWithPlaynCoreGroupLayer:(id<PlaynCoreGroupLayer>)parent
                                              withPlaynCoreLayer:(id<PlaynCoreLayer>)child
                                                       withFloat:(float)x
                                                       withFloat:(float)y;
- (TripleplayAnimAnimation_Action *)reparentWithPlaynCoreGroupLayer:(id<PlaynCoreGroupLayer>)newParent
                                                 withPlaynCoreLayer:(id<PlaynCoreLayer>)child;
- (TripleplayAnimAnimation_Action *)destroyWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer;
- (TripleplayAnimAnimation_Action *)setDepthWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer
                                                     withFloat:(float)depth;
- (TripleplayAnimAnimation_Action *)setVisibleWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer
                                                        withBOOL:(BOOL)visible;
- (TripleplayAnimAnimation_Action *)playWithTripleplaySoundPlayable:(id<TripleplaySoundPlayable>)sound;
- (TripleplayAnimAnimation_Action *)stopWithTripleplaySoundPlayable:(id<TripleplaySoundPlayable>)sound;
- (TripleplayAnimAnimation_Action *)playWithPlaynCoreSound:(id<PlaynCoreSound>)sound;
- (TripleplayAnimAnimation_One *)tweenVolumeWithTripleplaySoundPlayable:(id<TripleplaySoundPlayable>)sound;
- (TripleplayAnimAnimation_One *)tweenVolumeWithPlaynCoreSound:(id<PlaynCoreSound>)sound;
- (TripleplayAnimAnimation_Action *)stopWithPlaynCoreSound:(id<PlaynCoreSound>)sound;
- (TripleplayAnimAnimation_Action *)setValueWithReactValue:(ReactValue *)value
                                                    withId:(id)newValue;
- (TripleplayAnimAnimation_Action *)incrementWithReactValue:(ReactValue *)value
                                                    withInt:(int)amount;
+ (id<TripleplayAnimAnimation_Value>)onXWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer;
+ (id<TripleplayAnimAnimation_Value>)onYWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer;
+ (id<TripleplayAnimAnimation_Value>)onScaleXWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer;
+ (id<TripleplayAnimAnimation_Value>)onScaleYWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer;
- (id)init;
@end

@interface TripleplayAnimAnimBuilder_$1 : NSObject < TripleplayAnimAnimation_Value > {
 @public
  id<PlaynCoreLayer> val$layer_;
}

@property (nonatomic, retain) id<PlaynCoreLayer> val$layer;

- (float)initial OBJC_METHOD_FAMILY_NONE;
- (void)setWithFloat:(float)value;
- (id)initWithPlaynCoreLayer:(id<PlaynCoreLayer>)capture$0;
@end

@interface TripleplayAnimAnimBuilder_$2 : NSObject < TripleplayAnimAnimation_Value > {
 @public
  id<PlaynCoreLayer> val$layer_;
}

@property (nonatomic, retain) id<PlaynCoreLayer> val$layer;

- (float)initial OBJC_METHOD_FAMILY_NONE;
- (void)setWithFloat:(float)value;
- (id)initWithPlaynCoreLayer:(id<PlaynCoreLayer>)capture$0;
@end

@interface TripleplayAnimAnimBuilder_$3 : NSObject < TripleplayAnimAnimation_Value > {
 @public
  id<PlaynCoreLayer> val$layer_;
}

@property (nonatomic, retain) id<PlaynCoreLayer> val$layer;

- (float)initial OBJC_METHOD_FAMILY_NONE;
- (void)setWithFloat:(float)value;
- (id)initWithPlaynCoreLayer:(id<PlaynCoreLayer>)capture$0;
@end

@interface TripleplayAnimAnimBuilder_$4 : NSObject < JavaLangRunnable > {
 @public
  id<PlaynCoreGroupLayer> val$parent_;
  id<PlaynCoreLayer> val$child_;
}

@property (nonatomic, retain) id<PlaynCoreGroupLayer> val$parent;
@property (nonatomic, retain) id<PlaynCoreLayer> val$child;

- (void)run;
- (id)initWithPlaynCoreGroupLayer:(id<PlaynCoreGroupLayer>)capture$0
               withPlaynCoreLayer:(id<PlaynCoreLayer>)capture$1;
@end

@interface TripleplayAnimAnimBuilder_$5 : NSObject < JavaLangRunnable > {
 @public
  id<PlaynCoreGroupLayer> val$parent_;
  id<PlaynCoreLayer> val$child_;
  float val$x_;
  float val$y_;
}

@property (nonatomic, retain) id<PlaynCoreGroupLayer> val$parent;
@property (nonatomic, retain) id<PlaynCoreLayer> val$child;
@property (nonatomic, assign) float val$x;
@property (nonatomic, assign) float val$y;

- (void)run;
- (id)initWithPlaynCoreGroupLayer:(id<PlaynCoreGroupLayer>)capture$0
               withPlaynCoreLayer:(id<PlaynCoreLayer>)capture$1
                        withFloat:(float)capture$2
                        withFloat:(float)capture$3;
@end

@interface TripleplayAnimAnimBuilder_$6 : NSObject < JavaLangRunnable > {
 @public
  id<PlaynCoreLayer> val$child_;
  id<PlaynCoreGroupLayer> val$newParent_;
}

@property (nonatomic, retain) id<PlaynCoreLayer> val$child;
@property (nonatomic, retain) id<PlaynCoreGroupLayer> val$newParent;

- (void)run;
- (id)initWithPlaynCoreLayer:(id<PlaynCoreLayer>)capture$0
     withPlaynCoreGroupLayer:(id<PlaynCoreGroupLayer>)capture$1;
@end

@interface TripleplayAnimAnimBuilder_$7 : NSObject < JavaLangRunnable > {
 @public
  id<PlaynCoreLayer> val$layer_;
}

@property (nonatomic, retain) id<PlaynCoreLayer> val$layer;

- (void)run;
- (id)initWithPlaynCoreLayer:(id<PlaynCoreLayer>)capture$0;
@end

@interface TripleplayAnimAnimBuilder_$8 : NSObject < JavaLangRunnable > {
 @public
  id<PlaynCoreLayer> val$layer_;
  float val$depth_;
}

@property (nonatomic, retain) id<PlaynCoreLayer> val$layer;
@property (nonatomic, assign) float val$depth;

- (void)run;
- (id)initWithPlaynCoreLayer:(id<PlaynCoreLayer>)capture$0
                   withFloat:(float)capture$1;
@end

@interface TripleplayAnimAnimBuilder_$9 : NSObject < JavaLangRunnable > {
 @public
  id<PlaynCoreLayer> val$layer_;
  BOOL val$visible_;
}

@property (nonatomic, retain) id<PlaynCoreLayer> val$layer;
@property (nonatomic, assign) BOOL val$visible;

- (void)run;
- (id)initWithPlaynCoreLayer:(id<PlaynCoreLayer>)capture$0
                    withBOOL:(BOOL)capture$1;
@end

@interface TripleplayAnimAnimBuilder_$10 : NSObject < JavaLangRunnable > {
 @public
  id<TripleplaySoundPlayable> val$sound_;
}

@property (nonatomic, retain) id<TripleplaySoundPlayable> val$sound;

- (void)run;
- (id)initWithTripleplaySoundPlayable:(id<TripleplaySoundPlayable>)capture$0;
@end

@interface TripleplayAnimAnimBuilder_$11 : NSObject < JavaLangRunnable > {
 @public
  id<TripleplaySoundPlayable> val$sound_;
}

@property (nonatomic, retain) id<TripleplaySoundPlayable> val$sound;

- (void)run;
- (id)initWithTripleplaySoundPlayable:(id<TripleplaySoundPlayable>)capture$0;
@end

@interface TripleplayAnimAnimBuilder_$12 : NSObject < JavaLangRunnable > {
 @public
  id<PlaynCoreSound> val$sound_;
}

@property (nonatomic, retain) id<PlaynCoreSound> val$sound;

- (void)run;
- (id)initWithPlaynCoreSound:(id<PlaynCoreSound>)capture$0;
@end

@interface TripleplayAnimAnimBuilder_$13 : NSObject < TripleplayAnimAnimation_Value > {
 @public
  id<TripleplaySoundPlayable> val$sound_;
}

@property (nonatomic, retain) id<TripleplaySoundPlayable> val$sound;

- (float)initial OBJC_METHOD_FAMILY_NONE;
- (void)setWithFloat:(float)value;
- (id)initWithTripleplaySoundPlayable:(id<TripleplaySoundPlayable>)capture$0;
@end

@interface TripleplayAnimAnimBuilder_$14 : NSObject < TripleplayAnimAnimation_Value > {
 @public
  id<PlaynCoreSound> val$sound_;
}

@property (nonatomic, retain) id<PlaynCoreSound> val$sound;

- (float)initial OBJC_METHOD_FAMILY_NONE;
- (void)setWithFloat:(float)value;
- (id)initWithPlaynCoreSound:(id<PlaynCoreSound>)capture$0;
@end

@interface TripleplayAnimAnimBuilder_$15 : NSObject < JavaLangRunnable > {
 @public
  id<PlaynCoreSound> val$sound_;
}

@property (nonatomic, retain) id<PlaynCoreSound> val$sound;

- (void)run;
- (id)initWithPlaynCoreSound:(id<PlaynCoreSound>)capture$0;
@end

@interface TripleplayAnimAnimBuilder_$16 : NSObject < JavaLangRunnable > {
 @public
  ReactValue *val$value_;
  id val$newValue_;
}

@property (nonatomic, retain) ReactValue *val$value;
@property (nonatomic, retain) id val$newValue;

- (void)run;
- (id)initWithReactValue:(ReactValue *)capture$0
                  withId:(id)capture$1;
@end

@interface TripleplayAnimAnimBuilder_$17 : NSObject < JavaLangRunnable > {
 @public
  ReactValue *val$value_;
  int val$amount_;
}

@property (nonatomic, retain) ReactValue *val$value;
@property (nonatomic, assign) int val$amount;

- (void)run;
- (id)initWithReactValue:(ReactValue *)capture$0
                 withInt:(int)capture$1;
@end

@interface TripleplayAnimAnimBuilder_$18 : NSObject < TripleplayAnimAnimation_Value > {
 @public
  id<PlaynCoreLayer> val$layer_;
}

@property (nonatomic, retain) id<PlaynCoreLayer> val$layer;

- (float)initial OBJC_METHOD_FAMILY_NONE;
- (void)setWithFloat:(float)value;
- (id)initWithPlaynCoreLayer:(id<PlaynCoreLayer>)capture$0;
@end

@interface TripleplayAnimAnimBuilder_$19 : NSObject < TripleplayAnimAnimation_Value > {
 @public
  id<PlaynCoreLayer> val$layer_;
}

@property (nonatomic, retain) id<PlaynCoreLayer> val$layer;

- (float)initial OBJC_METHOD_FAMILY_NONE;
- (void)setWithFloat:(float)value;
- (id)initWithPlaynCoreLayer:(id<PlaynCoreLayer>)capture$0;
@end

@interface TripleplayAnimAnimBuilder_$20 : NSObject < TripleplayAnimAnimation_Value > {
 @public
  id<PlaynCoreLayer> val$layer_;
}

@property (nonatomic, retain) id<PlaynCoreLayer> val$layer;

- (float)initial OBJC_METHOD_FAMILY_NONE;
- (void)setWithFloat:(float)value;
- (id)initWithPlaynCoreLayer:(id<PlaynCoreLayer>)capture$0;
@end

@interface TripleplayAnimAnimBuilder_$21 : NSObject < TripleplayAnimAnimation_Value > {
 @public
  id<PlaynCoreLayer> val$layer_;
}

@property (nonatomic, retain) id<PlaynCoreLayer> val$layer;

- (float)initial OBJC_METHOD_FAMILY_NONE;
- (void)setWithFloat:(float)value;
- (id)initWithPlaynCoreLayer:(id<PlaynCoreLayer>)capture$0;
@end