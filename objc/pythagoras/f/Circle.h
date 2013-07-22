//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/Circle.java
//
//  Created by Thomas on 7/9/13.
//

@protocol PythagorasFICircle;
@protocol PythagorasFIPoint;

#import "JreEmulation.h"
#import "java/io/Serializable.h"
#import "pythagoras/f/AbstractCircle.h"

@interface PythagorasFCircle : PythagorasFAbstractCircle < JavaIoSerializable > {
 @public
  float x__;
  float y__;
  float radius__;
}

@property (nonatomic, assign) float x_;
@property (nonatomic, assign) float y_;
@property (nonatomic, assign) float radius_;

- (id)init;
- (id)initWithFloat:(float)x
          withFloat:(float)y
          withFloat:(float)radius;
- (id)initWithPythagorasFIPoint:(id<PythagorasFIPoint>)p
                      withFloat:(float)radius;
- (id)initWithPythagorasFICircle:(id<PythagorasFICircle>)c;
- (PythagorasFCircle *)setWithPythagorasFICircle:(id<PythagorasFICircle>)c;
- (PythagorasFCircle *)setWithFloat:(float)x
                          withFloat:(float)y
                          withFloat:(float)radius;
- (float)x;
- (float)y;
- (float)radius;
@end