//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/layout/BorderLayout.java
//
//  Created by Thomas on 7/1/13.
//

@class IOSObjectArray;
@class PythagorasFDimension;
@class PythagorasFRectangle;
@class TripleplayUiElement;
@class TripleplayUiElements;
@class TripleplayUiLayoutBorderLayout_Constraint;
@class TripleplayUiLayoutBorderLayout_PositionEnum;
@class TripleplayUiStyle_HAlignEnum;
@class TripleplayUiStyle_VAlignEnum;
@protocol JavaUtilMap;
@protocol PythagorasFIDimension;

#import "JreEmulation.h"
#import "java/lang/Enum.h"
#import "tripleplay/ui/Layout.h"

@interface TripleplayUiLayoutBorderLayout : TripleplayUiLayout {
 @public
  float hgap_;
  float vgap_;
}

@property (nonatomic, assign) float hgap;
@property (nonatomic, assign) float vgap;

+ (TripleplayUiLayoutBorderLayout_Constraint *)CENTER;
+ (TripleplayUiLayoutBorderLayout_Constraint *)NORTH;
+ (TripleplayUiLayoutBorderLayout_Constraint *)SOUTH;
+ (TripleplayUiLayoutBorderLayout_Constraint *)EAST;
+ (TripleplayUiLayoutBorderLayout_Constraint *)WEST;
+ (IOSObjectArray *)NS;
+ (IOSObjectArray *)WE;
+ (IOSObjectArray *)WCE;
- (id)init;
- (id)initWithFloat:(float)gaps;
- (id)initWithFloat:(float)hgap
          withFloat:(float)vgap;
- (PythagorasFDimension *)computeSizeWithTripleplayUiElements:(TripleplayUiElements *)elems
                                                    withFloat:(float)hintX
                                                    withFloat:(float)hintY;
- (void)layoutWithTripleplayUiElements:(TripleplayUiElements *)elems
                             withFloat:(float)left
                             withFloat:(float)top
                             withFloat:(float)width
                             withFloat:(float)height;
@end

@interface TripleplayUiLayoutBorderLayout_Constraint : TripleplayUiLayout_Constraint {
 @public
  TripleplayUiLayoutBorderLayout_PositionEnum *_pos_;
  BOOL _stretch_;
}

@property (nonatomic, retain) TripleplayUiLayoutBorderLayout_PositionEnum *_pos;
@property (nonatomic, assign) BOOL _stretch;

- (TripleplayUiLayoutBorderLayout_Constraint *)stretched;
- (TripleplayUiLayoutBorderLayout_Constraint *)unstretched;
- (id)initWithTripleplayUiLayoutBorderLayout_PositionEnum:(TripleplayUiLayoutBorderLayout_PositionEnum *)pos
                                                 withBOOL:(BOOL)stretch;
- (PythagorasFDimension *)adjustWithPythagorasFIDimension:(id<PythagorasFIDimension>)pref
                                 withPythagorasFRectangle:(PythagorasFRectangle *)boundary;
- (float)alignWithFloat:(float)origin
              withFloat:(float)offset;
@end

@interface TripleplayUiLayoutBorderLayout_Slots : NSObject {
 @public
  TripleplayUiLayoutBorderLayout *this$0_;
  id<JavaUtilMap> elements_;
}

@property (nonatomic, retain) TripleplayUiLayoutBorderLayout *this$0;
@property (nonatomic, retain) id<JavaUtilMap> elements;

- (id)initWithTripleplayUiLayoutBorderLayout:(TripleplayUiLayoutBorderLayout *)outer$
                    withTripleplayUiElements:(TripleplayUiElements *)elems;
- (PythagorasFDimension *)computeSizeWithFloat:(float)hintX
                                     withFloat:(float)hintY;
- (void)layoutNsWithTripleplayUiLayoutBorderLayout_PositionEnum:(TripleplayUiLayoutBorderLayout_PositionEnum *)p
                               withTripleplayUiStyle_HAlignEnum:(TripleplayUiStyle_HAlignEnum *)halign
                                       withPythagorasFRectangle:(PythagorasFRectangle *)bounds;
- (void)layoutWeWithTripleplayUiLayoutBorderLayout_PositionEnum:(TripleplayUiLayoutBorderLayout_PositionEnum *)p
                               withTripleplayUiStyle_VAlignEnum:(TripleplayUiStyle_VAlignEnum *)valign
                                       withPythagorasFRectangle:(PythagorasFRectangle *)bounds;
- (void)setBoundsWithTripleplayUiLayoutBorderLayout_PositionEnum:(TripleplayUiLayoutBorderLayout_PositionEnum *)p
                                                       withFloat:(float)x
                                                       withFloat:(float)y
                                       withPythagorasFIDimension:(id<PythagorasFIDimension>)dim;
- (int)countWithTripleplayUiLayoutBorderLayout_PositionEnumArray:(IOSObjectArray *)ps;
- (BOOL)stretchWithTripleplayUiLayoutBorderLayout_PositionEnum:(TripleplayUiLayoutBorderLayout_PositionEnum *)p;
- (TripleplayUiElement *)getWithTripleplayUiLayoutBorderLayout_PositionEnum:(TripleplayUiLayoutBorderLayout_PositionEnum *)p;
- (TripleplayUiLayoutBorderLayout_Constraint *)constraintWithTripleplayUiLayoutBorderLayout_PositionEnum:(TripleplayUiLayoutBorderLayout_PositionEnum *)p;
- (id<PythagorasFIDimension>)sizeWithTripleplayUiLayoutBorderLayout_PositionEnum:(TripleplayUiLayoutBorderLayout_PositionEnum *)p
                                                                       withFloat:(float)hintX
                                                                       withFloat:(float)hintY;
@end

typedef enum {
  TripleplayUiLayoutBorderLayout_Position_CENTER = 0,
  TripleplayUiLayoutBorderLayout_Position_NORTH = 1,
  TripleplayUiLayoutBorderLayout_Position_SOUTH = 2,
  TripleplayUiLayoutBorderLayout_Position_EAST = 3,
  TripleplayUiLayoutBorderLayout_Position_WEST = 4,
} TripleplayUiLayoutBorderLayout_Position;

@interface TripleplayUiLayoutBorderLayout_PositionEnum : JavaLangEnum < NSCopying > {
 @public
  TripleplayUiLayoutBorderLayout_Constraint *unstretched_;
  TripleplayUiLayoutBorderLayout_Constraint *stretched_;
  int orient_;
}
@property (nonatomic, retain) TripleplayUiLayoutBorderLayout_Constraint *unstretched;
@property (nonatomic, retain) TripleplayUiLayoutBorderLayout_Constraint *stretched;
@property (nonatomic, assign) int orient;

+ (TripleplayUiLayoutBorderLayout_PositionEnum *)CENTER;
+ (TripleplayUiLayoutBorderLayout_PositionEnum *)NORTH;
+ (TripleplayUiLayoutBorderLayout_PositionEnum *)SOUTH;
+ (TripleplayUiLayoutBorderLayout_PositionEnum *)EAST;
+ (TripleplayUiLayoutBorderLayout_PositionEnum *)WEST;
+ (IOSObjectArray *)values;
+ (TripleplayUiLayoutBorderLayout_PositionEnum *)valueOfWithNSString:(NSString *)name;
- (id)copyWithZone:(NSZone *)zone;
+ (TripleplayUiLayoutBorderLayout_PositionEnum *)positionOfWithTripleplayUiLayout_Constraint:(TripleplayUiLayout_Constraint *)c;
- (id)initWithInt:(int)orient
     withNSString:(NSString *)name
          withInt:(int)ordinal;
@end