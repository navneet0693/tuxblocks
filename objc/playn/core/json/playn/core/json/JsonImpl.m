//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/json/JsonImpl.java
//
//  Created by Thomas on 7/1/13.
//

#import "IOSClass.h"
#import "java/lang/Boolean.h"
#import "java/lang/IllegalArgumentException.h"
#import "playn/core/Json.h"
#import "playn/core/json/JsonArray.h"
#import "playn/core/json/JsonObject.h"
#import "playn/core/json/JsonParser.h"
#import "playn/core/json/JsonStringWriter.h"
#import "playn/core/json/JsonTypes.h"

@implementation PlaynCoreJsonJsonImpl

- (id<PlaynCoreJson_Writer>)newWriter OBJC_METHOD_FAMILY_NONE {
  return [[[PlaynCoreJsonJsonStringWriter alloc] init] autorelease];
}

- (id<PlaynCoreJson_Array>)createArray {
  return [[[PlaynCoreJsonJsonArray alloc] init] autorelease];
}

- (id<PlaynCoreJson_Object>)createObject {
  return [[[PlaynCoreJsonJsonObject alloc] init] autorelease];
}

- (BOOL)isArrayWithId:(id)o {
  return [PlaynCoreJsonJsonTypes isArrayWithId:o];
}

- (BOOL)isObjectWithId:(id)o {
  return [PlaynCoreJsonJsonTypes isObjectWithId:o];
}

- (id<PlaynCoreJson_Object>)parseWithNSString:(NSString *)json {
  return ((PlaynCoreJsonJsonObject *) [[PlaynCoreJsonJsonParser object] fromWithNSString:json]);
}

- (id<PlaynCoreJson_Array>)parseArrayWithNSString:(NSString *)json {
  return ((PlaynCoreJsonJsonArray *) [[PlaynCoreJsonJsonParser array] fromWithNSString:json]);
}

+ (void)checkJsonTypeWithId:(id)value {
  if (value == nil || [value isKindOfClass:[NSString class]] || [value conformsToProtocol: @protocol(PlaynCoreJson_Object)] || [value conformsToProtocol: @protocol(PlaynCoreJson_Array)] || [value isKindOfClass:[JavaLangBoolean class]] || [value isKindOfClass:[NSNumber class]]) return;
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"Invalid JSON type [value=%@, class=%@]", value, [NIL_CHK(value) getClass]]] autorelease];
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  [super dealloc];
}

@end