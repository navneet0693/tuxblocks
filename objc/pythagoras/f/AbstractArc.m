//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/AbstractArc.java
//
//  Created by Thomas on 7/9/13.
//

#import "IOSFloatArray.h"
#import "java/lang/Math.h"
#import "java/util/NoSuchElementException.h"
#import "pythagoras/f/Arc.h"
#import "pythagoras/f/FloatMath.h"
#import "pythagoras/f/IArc.h"
#import "pythagoras/f/IRectangularShape.h"
#import "pythagoras/f/Line.h"
#import "pythagoras/f/PathIterator.h"
#import "pythagoras/f/Point.h"
#import "pythagoras/f/Rectangle.h"
#import "pythagoras/f/RectangularShape.h"
#import "pythagoras/f/Transform.h"
#import "AbstractArc.h"

@implementation PythagorasFAbstractArc

- (PythagorasFPoint *)startPoint {
  return [self startPointWithPythagorasFPoint:[[[PythagorasFPoint alloc] init] autorelease]];
}

- (PythagorasFPoint *)startPointWithPythagorasFPoint:(PythagorasFPoint *)target {
  float a = [PythagorasFFloatMath toRadiansWithFloat:[self angleStart]];
  return [((PythagorasFPoint *) NIL_CHK(target)) setWithFloat:[self x] + (1.0f + [PythagorasFFloatMath cosWithFloat:a]) * [self width] / 2.0f withFloat:[self y] + (1.0f - [PythagorasFFloatMath sinWithFloat:a]) * [self height] / 2.0f];
}

- (PythagorasFPoint *)endPoint {
  return [self endPointWithPythagorasFPoint:[[[PythagorasFPoint alloc] init] autorelease]];
}

- (PythagorasFPoint *)endPointWithPythagorasFPoint:(PythagorasFPoint *)target {
  float a = [PythagorasFFloatMath toRadiansWithFloat:[self angleStart] + [self angleExtent]];
  return [((PythagorasFPoint *) NIL_CHK(target)) setWithFloat:[self x] + (1.0f + [PythagorasFFloatMath cosWithFloat:a]) * [self width] / 2.0f withFloat:[self y] + (1.0f - [PythagorasFFloatMath sinWithFloat:a]) * [self height] / 2.0f];
}

- (BOOL)containsAngleWithFloat:(float)angle {
  float extent = [self angleExtent];
  if (extent >= 360.0f) {
    return YES;
  }
  angle = [self normAngleWithFloat:angle];
  float a1 = [self normAngleWithFloat:[self angleStart]];
  float a2 = a1 + extent;
  if (a2 > 360.0f) {
    return angle >= a1 || angle <= a2 - 360.0f;
  }
  if (a2 < 0.0f) {
    return angle >= a2 + 360.0f || angle <= a1;
  }
  return (extent > 0.0f) ? a1 <= angle && angle <= a2 : a2 <= angle && angle <= a1;
}

- (PythagorasFArc *)clone {
  return [[[PythagorasFArc alloc] initWithFloat:[self x] withFloat:[self y] withFloat:[self width] withFloat:[self height] withFloat:[self angleStart] withFloat:[self angleExtent] withInt:[self arcType]] autorelease];
}

- (BOOL)isEmpty {
  return [self arcType] == PythagorasFIArc_OPEN || [super isEmpty];
}

- (BOOL)containsWithFloat:(float)px
                withFloat:(float)py {
  float nx = (px - [self x]) / [self width] - 0.5f;
  float ny = (py - [self y]) / [self height] - 0.5f;
  if ((nx * nx + ny * ny) > 0.25) {
    return NO;
  }
  float extent = [self angleExtent];
  float absExtent = [JavaLangMath absWithFloat:extent];
  if (absExtent >= 360.0f) {
    return YES;
  }
  BOOL containsAngle = [self containsAngleWithFloat:[PythagorasFFloatMath toDegreesWithFloat:-[PythagorasFFloatMath atan2WithFloat:ny withFloat:nx]]];
  if ([self arcType] == PythagorasFIArc_PIE) {
    return containsAngle;
  }
  if (absExtent <= 180.0f && !containsAngle) {
    return NO;
  }
  PythagorasFLine *l = [[[PythagorasFLine alloc] initWithPythagorasFIPoint:[self startPoint] withPythagorasFIPoint:[self endPoint]] autorelease];
  int ccw1 = [((PythagorasFLine *) NIL_CHK(l)) relativeCCWWithFloat:px withFloat:py];
  int ccw2 = [((PythagorasFLine *) NIL_CHK(l)) relativeCCWWithFloat:[self centerX] withFloat:[self centerY]];
  return ccw1 == 0 || ccw2 == 0 || ((ccw1 + ccw2) == 0 ^ absExtent > 180.0f);
}

- (BOOL)containsWithFloat:(float)rx
                withFloat:(float)ry
                withFloat:(float)rw
                withFloat:(float)rh {
  if (!([self containsWithFloat:rx withFloat:ry] && [self containsWithFloat:rx + rw withFloat:ry] && [self containsWithFloat:rx + rw withFloat:ry + rh] && [self containsWithFloat:rx withFloat:ry + rh])) {
    return NO;
  }
  float absExtent = [JavaLangMath absWithFloat:[self angleExtent]];
  if ([self arcType] != PythagorasFIArc_PIE || absExtent <= 180.0f || absExtent >= 360.0f) {
    return YES;
  }
  PythagorasFRectangle *r = [[[PythagorasFRectangle alloc] initWithFloat:rx withFloat:ry withFloat:rw withFloat:rh] autorelease];
  float cx = [self centerX], cy = [self centerY];
  if ([((PythagorasFRectangle *) NIL_CHK(r)) containsWithFloat:cx withFloat:cy]) {
    return NO;
  }
  PythagorasFPoint *p1 = [self startPoint], *p2 = [self endPoint];
  return ![((PythagorasFRectangle *) NIL_CHK(r)) intersectsLineWithFloat:cx withFloat:cy withFloat:[((PythagorasFPoint *) NIL_CHK(p1)) x] withFloat:[((PythagorasFPoint *) NIL_CHK(p1)) y]] && ![((PythagorasFRectangle *) NIL_CHK(r)) intersectsLineWithFloat:cx withFloat:cy withFloat:[((PythagorasFPoint *) NIL_CHK(p2)) x] withFloat:[((PythagorasFPoint *) NIL_CHK(p2)) y]];
}

- (BOOL)intersectsWithFloat:(float)rx
                  withFloat:(float)ry
                  withFloat:(float)rw
                  withFloat:(float)rh {
  if ([self isEmpty] || rw <= 0.0f || rh <= 0.0f) {
    return NO;
  }
  if ([self containsWithFloat:rx withFloat:ry] || [self containsWithFloat:rx + rw withFloat:ry] || [self containsWithFloat:rx withFloat:ry + rh] || [self containsWithFloat:rx + rw withFloat:ry + rh]) {
    return YES;
  }
  float cx = [self centerX], cy = [self centerY];
  PythagorasFPoint *p1 = [self startPoint], *p2 = [self endPoint];
  PythagorasFRectangle *r = [[[PythagorasFRectangle alloc] initWithFloat:rx withFloat:ry withFloat:rw withFloat:rh] autorelease];
  if ([((PythagorasFRectangle *) NIL_CHK(r)) containsWithPythagorasFIPoint:p1] || [((PythagorasFRectangle *) NIL_CHK(r)) containsWithPythagorasFIPoint:p2] || ([self arcType] == PythagorasFIArc_PIE && [((PythagorasFRectangle *) NIL_CHK(r)) containsWithFloat:cx withFloat:cy])) {
    return YES;
  }
  if ([self arcType] == PythagorasFIArc_PIE) {
    if ([((PythagorasFRectangle *) NIL_CHK(r)) intersectsLineWithFloat:[((PythagorasFPoint *) NIL_CHK(p1)) x] withFloat:[((PythagorasFPoint *) NIL_CHK(p1)) y] withFloat:cx withFloat:cy] || [((PythagorasFRectangle *) NIL_CHK(r)) intersectsLineWithFloat:[((PythagorasFPoint *) NIL_CHK(p2)) x] withFloat:[((PythagorasFPoint *) NIL_CHK(p2)) y] withFloat:cx withFloat:cy]) {
      return YES;
    }
  }
  else {
    if ([((PythagorasFRectangle *) NIL_CHK(r)) intersectsLineWithFloat:[((PythagorasFPoint *) NIL_CHK(p1)) x] withFloat:[((PythagorasFPoint *) NIL_CHK(p1)) y] withFloat:[((PythagorasFPoint *) NIL_CHK(p2)) x] withFloat:[((PythagorasFPoint *) NIL_CHK(p2)) y]]) {
      return YES;
    }
  }
  float nx = cx < rx ? rx : (cx > rx + rw ? rx + rw : cx);
  float ny = cy < ry ? ry : (cy > ry + rh ? ry + rh : cy);
  return [self containsWithFloat:nx withFloat:ny];
}

- (PythagorasFRectangle *)boundsWithPythagorasFRectangle:(PythagorasFRectangle *)target {
  if ([self isEmpty]) {
    [((PythagorasFRectangle *) NIL_CHK(target)) setBoundsWithFloat:[self x] withFloat:[self y] withFloat:[self width] withFloat:[self height]];
    return target;
  }
  float rx1 = [self x];
  float ry1 = [self y];
  float rx2 = rx1 + [self width];
  float ry2 = ry1 + [self height];
  PythagorasFPoint *p1 = [self startPoint], *p2 = [self endPoint];
  float bx1 = [self containsAngleWithFloat:180.0f] ? rx1 : [JavaLangMath minWithFloat:[((PythagorasFPoint *) NIL_CHK(p1)) x] withFloat:[((PythagorasFPoint *) NIL_CHK(p2)) x]];
  float by1 = [self containsAngleWithFloat:90.0f] ? ry1 : [JavaLangMath minWithFloat:[((PythagorasFPoint *) NIL_CHK(p1)) y] withFloat:[((PythagorasFPoint *) NIL_CHK(p2)) y]];
  float bx2 = [self containsAngleWithFloat:0.0f] ? rx2 : [JavaLangMath maxWithFloat:[((PythagorasFPoint *) NIL_CHK(p1)) x] withFloat:[((PythagorasFPoint *) NIL_CHK(p2)) x]];
  float by2 = [self containsAngleWithFloat:270.0f] ? ry2 : [JavaLangMath maxWithFloat:[((PythagorasFPoint *) NIL_CHK(p1)) y] withFloat:[((PythagorasFPoint *) NIL_CHK(p2)) y]];
  if ([self arcType] == PythagorasFIArc_PIE) {
    float cx = [self centerX];
    float cy = [self centerY];
    bx1 = [JavaLangMath minWithFloat:bx1 withFloat:cx];
    by1 = [JavaLangMath minWithFloat:by1 withFloat:cy];
    bx2 = [JavaLangMath maxWithFloat:bx2 withFloat:cx];
    by2 = [JavaLangMath maxWithFloat:by2 withFloat:cy];
  }
  [((PythagorasFRectangle *) NIL_CHK(target)) setBoundsWithFloat:bx1 withFloat:by1 withFloat:bx2 - bx1 withFloat:by2 - by1];
  return target;
}

- (id<PythagorasFPathIterator>)pathIteratorWithPythagorasFTransform:(id<PythagorasFTransform>)at {
  return [[[PythagorasFAbstractArc_Iterator alloc] initWithPythagorasFIArc:self withPythagorasFTransform:at] autorelease];
}

- (float)normAngleWithFloat:(float)angle {
  return angle - [PythagorasFFloatMath floorWithFloat:angle / 360.0f] * 360.0f;
}

- (float)angleExtent {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (float)angleStart {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (int)arcType {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (float)height {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (float)width {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (float)x {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (float)y {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)init {
  return [super init];
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self clone] retain];
}

- (void)dealloc {
  [super dealloc];
}

@end
@implementation PythagorasFAbstractArc_Iterator

@synthesize x = x_;
@synthesize y = y_;
@synthesize width = width_;
@synthesize height = height_;
@synthesize angle = angle_;
@synthesize extent = extent_;
@synthesize type = type_;
- (id<PythagorasFTransform>)t {
  return t_;
}
- (void)setT:(id<PythagorasFTransform>)t {
  JreOperatorRetainedAssign(&t_, self, t);
}
@synthesize t = t_;
@synthesize index = index_;
@synthesize arcCount = arcCount_;
@synthesize lineCount = lineCount_;
@synthesize step = step_;
@synthesize cos = cos_;
@synthesize sin = sin_;
@synthesize k = k_;
@synthesize kx = kx_;
@synthesize ky = ky_;
@synthesize mx = mx_;
@synthesize my = my_;

- (id)initWithPythagorasFIArc:(id<PythagorasFIArc>)a
     withPythagorasFTransform:(id<PythagorasFTransform>)t {
  if ((self = [super init])) {
    self.width = [((id<PythagorasFIArc>) NIL_CHK(a)) width] / 2.0f;
    self.height = [((id<PythagorasFIArc>) NIL_CHK(a)) height] / 2.0f;
    self.x = [((id<PythagorasFIArc>) NIL_CHK(a)) x] + width_;
    self.y = [((id<PythagorasFIArc>) NIL_CHK(a)) y] + height_;
    self.angle = -[PythagorasFFloatMath toRadiansWithFloat:[((id<PythagorasFIArc>) NIL_CHK(a)) angleStart]];
    self.extent = -[((id<PythagorasFIArc>) NIL_CHK(a)) angleExtent];
    self.type = [((id<PythagorasFIArc>) NIL_CHK(a)) arcType];
    self.t = t;
    if (width_ < 0 || height_ < 0) {
      arcCount_ = 0;
      lineCount_ = 0;
      index_ = 1;
      return self;
    }
    if ([JavaLangMath absWithFloat:extent_] >= 360.0f) {
      arcCount_ = 4;
      k_ = 4.0f / 3.0f * ([PythagorasFFloatMath sqrtWithFloat:2.0f] - 1.0f);
      step_ = PythagorasFFloatMath_PI / 2.0f;
      if (extent_ < 0.0f) {
        step_ = -step_;
        k_ = -k_;
      }
    }
    else {
      arcCount_ = (int) [JavaLangMath rintWithDouble:[JavaLangMath absWithFloat:extent_] / 90.0f];
      step_ = [PythagorasFFloatMath toRadiansWithFloat:extent_ / arcCount_];
      k_ = 4.0f / 3.0f * (1.0f - [PythagorasFFloatMath cosWithFloat:step_ / 2.0f]) / [PythagorasFFloatMath sinWithFloat:step_ / 2.0f];
    }
    lineCount_ = 0;
    if (type_ == PythagorasFIArc_CHORD) {
      lineCount_++;
    }
    else if (type_ == PythagorasFIArc_PIE) {
      lineCount_ += 2;
    }
  }
  return self;
}

- (int)windingRule {
  return PythagorasFPathIterator_WIND_NON_ZERO;
}

- (BOOL)isDone {
  return index_ > arcCount_ + lineCount_;
}

- (void)next {
  index_++;
}

- (int)currentSegmentWithJavaLangFloatArray:(IOSFloatArray *)coords {
  if ([self isDone]) {
    @throw [[[JavaUtilNoSuchElementException alloc] initWithNSString:@"Iterator out of bounds"] autorelease];
  }
  int type;
  int count;
  if (index_ == 0) {
    type = PythagorasFPathIterator_SEG_MOVETO;
    count = 1;
    cos_ = [PythagorasFFloatMath cosWithFloat:angle_];
    sin_ = [PythagorasFFloatMath sinWithFloat:angle_];
    kx_ = k_ * width_ * sin_;
    ky_ = k_ * height_ * cos_;
    [((IOSFloatArray *) NIL_CHK(coords)) replaceFloatAtIndex:0 withFloat:mx_ = x_ + cos_ * width_];
    [((IOSFloatArray *) NIL_CHK(coords)) replaceFloatAtIndex:1 withFloat:my_ = y_ + sin_ * height_];
  }
  else if (index_ <= arcCount_) {
    type = PythagorasFPathIterator_SEG_CUBICTO;
    count = 3;
    [((IOSFloatArray *) NIL_CHK(coords)) replaceFloatAtIndex:0 withFloat:mx_ - kx_];
    [((IOSFloatArray *) NIL_CHK(coords)) replaceFloatAtIndex:1 withFloat:my_ + ky_];
    angle_ += step_;
    cos_ = [PythagorasFFloatMath cosWithFloat:angle_];
    sin_ = [PythagorasFFloatMath sinWithFloat:angle_];
    kx_ = k_ * width_ * sin_;
    ky_ = k_ * height_ * cos_;
    [((IOSFloatArray *) NIL_CHK(coords)) replaceFloatAtIndex:4 withFloat:mx_ = x_ + cos_ * width_];
    [((IOSFloatArray *) NIL_CHK(coords)) replaceFloatAtIndex:5 withFloat:my_ = y_ + sin_ * height_];
    [((IOSFloatArray *) NIL_CHK(coords)) replaceFloatAtIndex:2 withFloat:mx_ + kx_];
    [((IOSFloatArray *) NIL_CHK(coords)) replaceFloatAtIndex:3 withFloat:my_ - ky_];
  }
  else if (index_ == arcCount_ + lineCount_) {
    type = PythagorasFPathIterator_SEG_CLOSE;
    count = 0;
  }
  else {
    type = PythagorasFPathIterator_SEG_LINETO;
    count = 1;
    [((IOSFloatArray *) NIL_CHK(coords)) replaceFloatAtIndex:0 withFloat:x_];
    [((IOSFloatArray *) NIL_CHK(coords)) replaceFloatAtIndex:1 withFloat:y_];
  }
  if (t_ != nil) {
    [t_ transformWithJavaLangFloatArray:coords withInt:0 withJavaLangFloatArray:coords withInt:0 withInt:count];
  }
  return type;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&t_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PythagorasFAbstractArc_Iterator *typedCopy = (PythagorasFAbstractArc_Iterator *) copy;
  typedCopy.x = x_;
  typedCopy.y = y_;
  typedCopy.width = width_;
  typedCopy.height = height_;
  typedCopy.angle = angle_;
  typedCopy.extent = extent_;
  typedCopy.type = type_;
  typedCopy.t = t_;
  typedCopy.index = index_;
  typedCopy.arcCount = arcCount_;
  typedCopy.lineCount = lineCount_;
  typedCopy.step = step_;
  typedCopy.cos = cos_;
  typedCopy.sin = sin_;
  typedCopy.k = k_;
  typedCopy.kx = kx_;
  typedCopy.ky = ky_;
  typedCopy.mx = mx_;
  typedCopy.my = my_;
}

@end