//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/i/MathUtil.java
//
//  Created by Thomas on 7/1/13.
//

@implementation PythagorasIMathUtil

+ (int)clampWithInt:(int)value
            withInt:(int)low
            withInt:(int)high {
  if (value < low) return low;
  if (value > high) return high;
  return value;
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  [super dealloc];
}

@end