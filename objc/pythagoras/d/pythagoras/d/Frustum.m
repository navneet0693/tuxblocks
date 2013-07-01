//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/Frustum.java
//
//  Created by Thomas on 7/1/13.
//

#import "IOSObjectArray.h"
#import "java/lang/Float.h"
#import "java/lang/IllegalArgumentException.h"
#import "java/lang/Math.h"
#import "pythagoras/d/Box.h"
#import "pythagoras/d/IVector3.h"
#import "pythagoras/d/Matrix3.h"
#import "pythagoras/d/Plane.h"
#import "pythagoras/d/Vector3.h"

@implementation PythagorasDFrustum

static PythagorasDVector3 * PythagorasDFrustum__vertex_;

- (IOSObjectArray *)_vertices {
  return _vertices_;
}
- (void)set_vertices:(IOSObjectArray *)_vertices {
  JreOperatorRetainedAssign(&_vertices_, self, _vertices);
}
@synthesize _vertices = _vertices_;
- (IOSObjectArray *)_planes {
  return _planes_;
}
- (void)set_planes:(IOSObjectArray *)_planes {
  JreOperatorRetainedAssign(&_planes_, self, _planes);
}
@synthesize _planes = _planes_;
- (PythagorasDBox *)_bounds {
  return _bounds_;
}
- (void)set_bounds:(PythagorasDBox *)_bounds {
  JreOperatorRetainedAssign(&_bounds_, self, _bounds);
}
@synthesize _bounds = _bounds_;

+ (PythagorasDVector3 *)_vertex {
  return PythagorasDFrustum__vertex_;
}

+ (void)set_vertex:(PythagorasDVector3 *)_vertex {
  JreOperatorRetainedAssign(&PythagorasDFrustum__vertex_, self, _vertex);
}

- (id)init {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&_vertices_, self, [[[IOSObjectArray alloc] initWithLength:8 type:[IOSClass classWithClass:[PythagorasDVector3 class]]] autorelease]);
    JreOperatorRetainedAssign(&_planes_, self, [[[IOSObjectArray alloc] initWithLength:6 type:[IOSClass classWithClass:[PythagorasDPlane class]]] autorelease]);
    JreOperatorRetainedAssign(&_bounds_, self, [[[PythagorasDBox alloc] init] autorelease]);
    for (int ii = 0; ii < 8; ii++) {
      [((IOSObjectArray *) NIL_CHK(_vertices_)) replaceObjectAtIndex:ii withObject:[[[PythagorasDVector3 alloc] init] autorelease]];
    }
    for (int ii = 0; ii < 6; ii++) {
      [((IOSObjectArray *) NIL_CHK(_planes_)) replaceObjectAtIndex:ii withObject:[[[PythagorasDPlane alloc] init] autorelease]];
    }
  }
  return self;
}

- (IOSObjectArray *)vertices {
  return _vertices_;
}

- (PythagorasDBox *)bounds {
  return _bounds_;
}

- (PythagorasDFrustum *)setToPerspectiveWithDouble:(double)fovy
                                        withDouble:(double)aspect
                                        withDouble:(double)znear
                                        withDouble:(double)zfar {
  double top = znear * [JavaLangMath tanWithDouble:fovy / 2.0f], bottom = -top;
  double right = top * aspect, left = -right;
  return [self setToFrustumWithDouble:left withDouble:right withDouble:bottom withDouble:top withDouble:znear withDouble:zfar];
}

- (PythagorasDFrustum *)setToFrustumWithDouble:(double)left
                                    withDouble:(double)right
                                    withDouble:(double)bottom
                                    withDouble:(double)top
                                    withDouble:(double)near
                                    withDouble:(double)far {
  return [self setToProjectionWithDouble:left withDouble:right withDouble:bottom withDouble:top withDouble:near withDouble:far withPythagorasDIVector3:[PythagorasDVector3 UNIT_Z] withBOOL:NO withBOOL:NO];
}

- (PythagorasDFrustum *)setToOrthoWithDouble:(double)left
                                  withDouble:(double)right
                                  withDouble:(double)bottom
                                  withDouble:(double)top
                                  withDouble:(double)near
                                  withDouble:(double)far {
  return [self setToProjectionWithDouble:left withDouble:right withDouble:bottom withDouble:top withDouble:near withDouble:far withPythagorasDIVector3:[PythagorasDVector3 UNIT_Z] withBOOL:YES withBOOL:NO];
}

- (PythagorasDFrustum *)setToProjectionWithDouble:(double)left
                                       withDouble:(double)right
                                       withDouble:(double)bottom
                                       withDouble:(double)top
                                       withDouble:(double)near
                                       withDouble:(double)far
                          withPythagorasDIVector3:(id<PythagorasDIVector3>)nearFarNormal
                                         withBOOL:(BOOL)ortho
                                         withBOOL:(BOOL)mirrored {
  double nfnx = [((id<PythagorasDIVector3>) NIL_CHK(nearFarNormal)) x], nfny = [((id<PythagorasDIVector3>) NIL_CHK(nearFarNormal)) y], nfnz = [((id<PythagorasDIVector3>) NIL_CHK(nearFarNormal)) z];
  if (ortho) {
    double nrz = -1.0f / nfnz;
    double xl = nfnx * left * nrz, xr = nfnx * right * nrz;
    double yb = nfny * bottom * nrz, yt = nfny * top * nrz;
    (void) [((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:0]) setWithDouble:left withDouble:bottom withDouble:xl + yb - near];
    (void) [((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:mirrored ? 3 : 1]) setWithDouble:right withDouble:bottom withDouble:xr + yb - near];
    (void) [((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:2]) setWithDouble:right withDouble:top withDouble:xr + yt - near];
    (void) [((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:mirrored ? 1 : 3]) setWithDouble:left withDouble:top withDouble:xl + yt - near];
    (void) [((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:4]) setWithDouble:left withDouble:bottom withDouble:xl + yb - far];
    (void) [((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:mirrored ? 7 : 5]) setWithDouble:right withDouble:bottom withDouble:xr + yb - far];
    (void) [((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:6]) setWithDouble:right withDouble:top withDouble:xr + yt - far];
    (void) [((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:mirrored ? 5 : 7]) setWithDouble:left withDouble:top withDouble:xl + yt - far];
  }
  else {
    double rn = 1.0f / near;
    double lrn = left * rn, rrn = right * rn;
    double brn = bottom * rn, trn = top * rn;
    double nz = near * nfnz;
    double z0 = nz / (nfnx * lrn + nfny * brn - nfnz);
    (void) [((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:0]) setWithDouble:-z0 * lrn withDouble:-z0 * brn withDouble:z0];
    double z1 = nz / (nfnx * rrn + nfny * brn - nfnz);
    (void) [((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:mirrored ? 3 : 1]) setWithDouble:-z1 * rrn withDouble:-z1 * brn withDouble:z1];
    double z2 = nz / (nfnx * rrn + nfny * trn - nfnz);
    (void) [((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:2]) setWithDouble:-z2 * rrn withDouble:-z2 * trn withDouble:z2];
    double z3 = nz / (nfnx * lrn + nfny * trn - nfnz);
    (void) [((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:mirrored ? 1 : 3]) setWithDouble:-z3 * lrn withDouble:-z3 * trn withDouble:z3];
    double fz = far * nfnz;
    double z4 = fz / (nfnx * lrn + nfny * brn - nfnz);
    (void) [((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:4]) setWithDouble:-z4 * lrn withDouble:-z4 * brn withDouble:z4];
    double z5 = fz / (nfnx * rrn + nfny * brn - nfnz);
    (void) [((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:mirrored ? 7 : 5]) setWithDouble:-z5 * rrn withDouble:-z5 * brn withDouble:z5];
    double z6 = fz / (nfnx * rrn + nfny * trn - nfnz);
    (void) [((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:6]) setWithDouble:-z6 * rrn withDouble:-z6 * trn withDouble:z6];
    double z7 = fz / (nfnx * lrn + nfny * trn - nfnz);
    (void) [((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:mirrored ? 5 : 7]) setWithDouble:-z7 * lrn withDouble:-z7 * trn withDouble:z7];
  }
  [self updateDerivedState];
  return self;
}

- (double)distanceWithPythagorasDVector3:(PythagorasDVector3 *)point {
  double distance = -JavaLangFloat_MAX_VALUE;
  {
    IOSObjectArray *a__ = _planes_;
    int n__ = (int) [((IOSObjectArray *) NIL_CHK(a__)) count];
    for (int i__ = 0; i__ < n__; i__++) {
      PythagorasDPlane *plane = ((PythagorasDPlane *) [((IOSObjectArray *) NIL_CHK(a__)) objectAtIndex:i__]);
      distance = [JavaLangMath maxWithDouble:distance withDouble:[((PythagorasDPlane *) NIL_CHK(plane)) distanceWithPythagorasDIVector3:point]];
    }
  }
  return distance;
}

- (PythagorasDFrustum_IntersectionTypeEnum *)intersectionTypeWithPythagorasDBox:(PythagorasDBox *)box {
  if (![((PythagorasDBox *) NIL_CHK(_bounds_)) intersectsWithPythagorasDIBox:box]) {
    return [PythagorasDFrustum_IntersectionTypeEnum NONE];
  }
  int ccount = 0;
  for (int ii = 0; ii < 6; ii++) {
    int inside = 0;
    PythagorasDPlane *plane = ((PythagorasDPlane *) [((IOSObjectArray *) NIL_CHK(_planes_)) objectAtIndex:ii]);
    for (int jj = 0; jj < 8; jj++) {
      if ([((PythagorasDPlane *) NIL_CHK(plane)) distanceWithPythagorasDIVector3:[((PythagorasDBox *) NIL_CHK(box)) vertexWithInt:jj withPythagorasDVector3:PythagorasDFrustum__vertex_]] <= 0.0f) {
        inside++;
      }
    }
    if (inside == 0) {
      return [PythagorasDFrustum_IntersectionTypeEnum NONE];
    }
    else if (inside == 8) {
      ccount++;
    }
  }
  return (ccount == 6) ? [PythagorasDFrustum_IntersectionTypeEnum CONTAINS] : [PythagorasDFrustum_IntersectionTypeEnum INTERSECTS];
}

- (PythagorasDBox *)boundsUnderRotationWithPythagorasDMatrix3:(PythagorasDMatrix3 *)matrix
                                           withPythagorasDBox:(PythagorasDBox *)result {
  (void) [((PythagorasDBox *) NIL_CHK(result)) setToEmpty];
  {
    IOSObjectArray *a__ = _vertices_;
    int n__ = (int) [((IOSObjectArray *) NIL_CHK(a__)) count];
    for (int i__ = 0; i__ < n__; i__++) {
      PythagorasDVector3 *vertex = ((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(a__)) objectAtIndex:i__]);
      (void) [((PythagorasDBox *) NIL_CHK(result)) addLocalWithPythagorasDIVector3:[((PythagorasDMatrix3 *) NIL_CHK(matrix)) transformWithPythagorasDIVector3:vertex withPythagorasDVector3:PythagorasDFrustum__vertex_]];
    }
  }
  return result;
}

- (void)updateDerivedState {
  (void) [((PythagorasDPlane *) [((IOSObjectArray *) NIL_CHK(_planes_)) objectAtIndex:0]) fromPointsWithPythagorasDIVector3:((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:0]) withPythagorasDIVector3:((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:1]) withPythagorasDIVector3:((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:2])];
  (void) [((PythagorasDPlane *) [((IOSObjectArray *) NIL_CHK(_planes_)) objectAtIndex:1]) fromPointsWithPythagorasDIVector3:((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:5]) withPythagorasDIVector3:((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:4]) withPythagorasDIVector3:((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:7])];
  (void) [((PythagorasDPlane *) [((IOSObjectArray *) NIL_CHK(_planes_)) objectAtIndex:2]) fromPointsWithPythagorasDIVector3:((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:1]) withPythagorasDIVector3:((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:5]) withPythagorasDIVector3:((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:6])];
  (void) [((PythagorasDPlane *) [((IOSObjectArray *) NIL_CHK(_planes_)) objectAtIndex:3]) fromPointsWithPythagorasDIVector3:((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:4]) withPythagorasDIVector3:((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:0]) withPythagorasDIVector3:((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:3])];
  (void) [((PythagorasDPlane *) [((IOSObjectArray *) NIL_CHK(_planes_)) objectAtIndex:4]) fromPointsWithPythagorasDIVector3:((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:3]) withPythagorasDIVector3:((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:2]) withPythagorasDIVector3:((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:6])];
  (void) [((PythagorasDPlane *) [((IOSObjectArray *) NIL_CHK(_planes_)) objectAtIndex:5]) fromPointsWithPythagorasDIVector3:((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:4]) withPythagorasDIVector3:((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:5]) withPythagorasDIVector3:((PythagorasDVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:1])];
  (void) [((PythagorasDBox *) NIL_CHK(_bounds_)) fromPointsWithPythagorasDIVector3Array:_vertices_];
}

+ (void)initialize {
  if (self == [PythagorasDFrustum class]) {
    JreOperatorRetainedAssign(&PythagorasDFrustum__vertex_, self, [[[PythagorasDVector3 alloc] init] autorelease]);
  }
}

- (void)dealloc {
  JreOperatorRetainedAssign(&_bounds_, self, nil);
  JreOperatorRetainedAssign(&_planes_, self, nil);
  JreOperatorRetainedAssign(&_vertices_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PythagorasDFrustum *typedCopy = (PythagorasDFrustum *) copy;
  typedCopy._vertices = _vertices_;
  typedCopy._planes = _planes_;
  typedCopy._bounds = _bounds_;
}

@end

static PythagorasDFrustum_IntersectionTypeEnum *PythagorasDFrustum_IntersectionTypeEnum_NONE;
static PythagorasDFrustum_IntersectionTypeEnum *PythagorasDFrustum_IntersectionTypeEnum_INTERSECTS;
static PythagorasDFrustum_IntersectionTypeEnum *PythagorasDFrustum_IntersectionTypeEnum_CONTAINS;
IOSObjectArray *PythagorasDFrustum_IntersectionTypeEnum_values;

@implementation PythagorasDFrustum_IntersectionTypeEnum

+ (PythagorasDFrustum_IntersectionTypeEnum *)NONE {
  return PythagorasDFrustum_IntersectionTypeEnum_NONE;
}
+ (PythagorasDFrustum_IntersectionTypeEnum *)INTERSECTS {
  return PythagorasDFrustum_IntersectionTypeEnum_INTERSECTS;
}
+ (PythagorasDFrustum_IntersectionTypeEnum *)CONTAINS {
  return PythagorasDFrustum_IntersectionTypeEnum_CONTAINS;
}

- (id)copyWithZone:(NSZone *)zone {
  return [self retain];
}

- (id)initWithNSString:(NSString *)name withInt:(int)ordinal {
  return [super initWithNSString:name withInt:ordinal];
}

+ (void)initialize {
  if (self == [PythagorasDFrustum_IntersectionTypeEnum class]) {
    PythagorasDFrustum_IntersectionTypeEnum_NONE = [[PythagorasDFrustum_IntersectionTypeEnum alloc] initWithNSString:@"NONE" withInt:0];
    PythagorasDFrustum_IntersectionTypeEnum_INTERSECTS = [[PythagorasDFrustum_IntersectionTypeEnum alloc] initWithNSString:@"INTERSECTS" withInt:1];
    PythagorasDFrustum_IntersectionTypeEnum_CONTAINS = [[PythagorasDFrustum_IntersectionTypeEnum alloc] initWithNSString:@"CONTAINS" withInt:2];
    PythagorasDFrustum_IntersectionTypeEnum_values = [[IOSObjectArray alloc] initWithObjects:(id[]){ PythagorasDFrustum_IntersectionTypeEnum_NONE, PythagorasDFrustum_IntersectionTypeEnum_INTERSECTS, PythagorasDFrustum_IntersectionTypeEnum_CONTAINS, nil } count:3 type:[IOSClass classWithClass:[PythagorasDFrustum_IntersectionTypeEnum class]]];
  }
}

+ (IOSObjectArray *)values {
  return [IOSObjectArray arrayWithArray:PythagorasDFrustum_IntersectionTypeEnum_values];
}

+ (PythagorasDFrustum_IntersectionTypeEnum *)valueOfWithNSString:(NSString *)name {
  for (int i = 0; i < [PythagorasDFrustum_IntersectionTypeEnum_values count]; i++) {
    PythagorasDFrustum_IntersectionTypeEnum *e = [PythagorasDFrustum_IntersectionTypeEnum_values objectAtIndex:i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:name] autorelease];
  return nil;
}

@end