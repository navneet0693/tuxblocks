//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: C:\Users\Thomas\Documents\Eclipse\Tux\tuxblocks\core\src\main\java\tuxkids\tuxblocks\core\utils\Debug.java
//
//  Created by Thomas on 7/1/13.
//

@class IOSObjectArray;
@class JavaLangException;

#import "JreEmulation.h"

@interface TBDebug : NSObject {
}

+ (BOOL)getDEBUG;
+ (BOOL *)getDEBUGRef;
+ (BOOL)SHOW_TRACE;
+ (BOOL *)SHOW_TRACERef;
+ (void)writeWithLongInt:(long long int)x;
+ (void)writeWithInt:(int)x;
+ (void)writeWithId:(id)o;
+ (void)writeWithFloat:(float)x;
+ (void)writeWithNSString:(NSString *)format
        withNSObjectArray:(IOSObjectArray *)args;
+ (void)writeWithJavaLangException:(JavaLangException *)e;
+ (void)writeWithNSString:(NSString *)text;
- (id)init;
@end

typedef TBDebug TuxkidsTuxblocksCoreUtilsDebug;