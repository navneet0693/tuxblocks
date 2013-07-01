//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/AbstractPoint.java
//
//  Created by Thomas on 7/1/13.
//

@class PythagorasFPoint;

#import "JreEmulation.h"
#import "pythagoras/f/IPoint.h"

@interface PythagorasFAbstractPoint : NSObject < PythagorasFIPoint > {
}

- (float)distanceSqWithFloat:(float)px
                   withFloat:(float)py;
- (float)distanceSqWithPythagorasFIPoint:(id<PythagorasFIPoint>)p;
- (float)distanceWithFloat:(float)px
                 withFloat:(float)py;
- (float)distanceWithPythagorasFIPoint:(id<PythagorasFIPoint>)p;
- (float)directionWithPythagorasFIPoint:(id<PythagorasFIPoint>)other;
- (PythagorasFPoint *)multWithFloat:(float)s;
- (PythagorasFPoint *)multWithFloat:(float)s
               withPythagorasFPoint:(PythagorasFPoint *)result;
- (PythagorasFPoint *)addWithFloat:(float)x
                         withFloat:(float)y;
- (PythagorasFPoint *)addWithFloat:(float)x
                         withFloat:(float)y
              withPythagorasFPoint:(PythagorasFPoint *)result;
- (PythagorasFPoint *)subtractWithFloat:(float)x
                              withFloat:(float)y;
- (PythagorasFPoint *)subtractWithFloat:(float)x
                              withFloat:(float)y
                   withPythagorasFPoint:(PythagorasFPoint *)result;
- (PythagorasFPoint *)subtractWithPythagorasFIPoint:(id<PythagorasFIPoint>)other
                               withPythagorasFPoint:(PythagorasFPoint *)result;
- (PythagorasFPoint *)rotateWithFloat:(float)angle;
- (PythagorasFPoint *)rotateWithFloat:(float)angle
                 withPythagorasFPoint:(PythagorasFPoint *)result;
- (PythagorasFPoint *)clone;
- (BOOL)isEqual:(id)obj;
- (NSUInteger)hash;
- (NSString *)description;
- (float)x;
- (float)y;
- (id)init;
- (id)copyWithZone:(NSZone *)zone;
@end