//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/gl/ImageLayerGL.java
//
//  Created by Thomas on 7/1/13.
//

#import "IOSClass.h"
#import "IOSObjectArray.h"
#import "java/lang/Float.h"
#import "playn/core/AbstractLayer.h"
#import "playn/core/Asserts.h"
#import "playn/core/Image.h"
#import "playn/core/ImageLayer.h"
#import "playn/core/InternalTransform.h"
#import "playn/core/Tint.h"
#import "playn/core/gl/AbstractImageGL.h"
#import "playn/core/gl/GLContext.h"
#import "playn/core/gl/GLShader.h"
#import "playn/core/gl/LayerGL.h"

@implementation PlaynCoreGlImageLayerGL

@synthesize width_ = width__;
@synthesize height_ = height__;
@synthesize widthSet = widthSet_;
@synthesize heightSet = heightSet_;
- (PlaynCoreGlAbstractImageGL *)img {
  return img_;
}
- (void)setImg:(PlaynCoreGlAbstractImageGL *)img {
  JreOperatorRetainedAssign(&img_, self, img);
}
@synthesize img = img_;

- (id)initWithPlaynCoreGlGLContext:(PlaynCoreGlGLContext *)ctx {
  return [super initWithPlaynCoreGlGLContext:ctx];
}

- (void)destroy {
  [super destroy];
  (void) [self setImageWithPlaynCoreImage:nil];
}

- (void)clearHeight {
  heightSet_ = NO;
}

- (void)clearWidth {
  widthSet_ = NO;
}

- (id<PlaynCoreImage>)image {
  return img_;
}

- (id<PlaynCoreImageLayer>)setImageWithPlaynCoreImage:(id<PlaynCoreImage>)img {
  [PlaynCoreAsserts checkArgumentWithBOOL:img == nil || [(id) img isKindOfClass:[PlaynCoreGlAbstractImageGL class]]];
  if (self.img != img) {
    if (self.img != nil) [self.img release__];
    self.img = (PlaynCoreGlAbstractImageGL *) img;
    if (self.img != nil) [self.img reference];
  }
  return self;
}

- (void)setWidthWithFloat:(float)width {
  [PlaynCoreAsserts checkArgumentWithBOOL:width > 0 withId:@"Width must be > 0"];
  widthSet_ = YES;
  self.width_ = width;
}

- (void)setHeightWithFloat:(float)height {
  [PlaynCoreAsserts checkArgumentWithBOOL:height > 0 withId:@"Height must be > 0"];
  heightSet_ = YES;
  self.height_ = height;
}

- (void)setSizeWithFloat:(float)width
               withFloat:(float)height {
  [PlaynCoreAsserts checkArgumentWithBOOL:width > 0 && height > 0 withNSString:@"Width and height must be > 0 (got %dx%d)" withNSObjectArray:[IOSObjectArray arrayWithType:[IOSClass classWithClass:[NSObject class]] count:2, [JavaLangFloat valueOfWithFloat:width], [JavaLangFloat valueOfWithFloat:height] ]];
  widthSet_ = YES;
  self.width_ = width;
  heightSet_ = YES;
  self.height_ = height;
}

- (void)paintWithPlaynCoreInternalTransform:(id<PlaynCoreInternalTransform>)curTransform
                                    withInt:(int)curTint
                    withPlaynCoreGlGLShader:(PlaynCoreGlGLShader *)curShader {
  if ([self visible] && img_ != nil) {
    if (tint__ != PlaynCoreTint_NOOP_TINT) curTint = [PlaynCoreTint combineWithInt:curTint withInt:tint__];
    [((PlaynCoreGlAbstractImageGL *) NIL_CHK(img_)) drawWithPlaynCoreGlGLShader:(shader_ == nil) ? curShader : shader_ withPlaynCoreInternalTransform:[self localTransformWithPlaynCoreInternalTransform:curTransform] withInt:curTint withFloat:0 withFloat:0 withFloat:[self width] withFloat:[self height]];
  }
}

- (float)width {
  (void) [PlaynCoreAsserts checkNotNullWithId:img_ withId:@"Image must not be null"];
  return widthSet_ ? width__ : [((PlaynCoreGlAbstractImageGL *) NIL_CHK(img_)) width];
}

- (float)height {
  (void) [PlaynCoreAsserts checkNotNullWithId:img_ withId:@"Image must not be null"];
  return heightSet_ ? height__ : [((PlaynCoreGlAbstractImageGL *) NIL_CHK(img_)) height];
}

- (float)scaledWidth {
  return [self scaleX] * [self width];
}

- (float)scaledHeight {
  return [self scaleY] * [self height];
}

- (void)dealloc {
  JreOperatorRetainedAssign(&img_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreGlImageLayerGL *typedCopy = (PlaynCoreGlImageLayerGL *) copy;
  typedCopy.width_ = width__;
  typedCopy.height_ = height__;
  typedCopy.widthSet = widthSet_;
  typedCopy.heightSet = heightSet_;
  typedCopy.img = img_;
}

@end