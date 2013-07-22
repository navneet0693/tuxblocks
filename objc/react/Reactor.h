//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: react/Reactor.java
//
//  Created by Thomas on 7/1/13.
//

@class ReactCons;
@class ReactReactor_RListener;
@class ReactReactor_Runs;

#import "JreEmulation.h"
#import "java/lang/Runnable.h"

@interface ReactReactor : NSObject {
 @public
  ReactCons *_listeners_;
  ReactReactor_Runs *_pendingRuns_;
}

@property (nonatomic, retain) ReactCons *_listeners;
@property (nonatomic, retain) ReactReactor_Runs *_pendingRuns;

+ (ReactCons *)DISPATCHING;
- (BOOL)hasConnections;
- (ReactCons *)addConnectionWithId:(ReactReactor_RListener *)listener;
- (ReactCons *)addConsWithReactCons:(ReactCons *)cons;
- (ReactCons *)prepareNotify;
- (void)finishNotifyWithReactCons:(ReactCons *)lners;
- (void)disconnectWithReactCons:(ReactCons *)cons;
- (void)removeConnectionWithId:(id)listener;
+ (BOOL)areEqualWithId:(id)o1
                withId:(id)o2;
- (void)checkMutate;
- (void)connectionAdded;
- (void)connectionRemoved;
+ (ReactReactor_Runs *)insertWithReactReactor_Runs:(ReactReactor_Runs *)head
                             withReactReactor_Runs:(ReactReactor_Runs *)action;
- (BOOL)isDispatching;
- (id)init;
@end

@interface ReactReactor_RListener : NSObject {
}

- (int)priority;
- (id)init;
@end

@interface ReactReactor_Runs : NSObject < JavaLangRunnable > {
 @public
  ReactReactor_Runs *next_;
}

@property (nonatomic, retain) ReactReactor_Runs *next;

- (void)run;
- (id)init;
@end

@interface ReactReactor_$1 : ReactReactor_Runs {
 @public
  ReactReactor *this$0_;
  ReactCons *val$cons_;
}

@property (nonatomic, retain) ReactReactor *this$0;
@property (nonatomic, retain) ReactCons *val$cons;

- (void)run;
- (id)initWithReactReactor:(ReactReactor *)outer$
             withReactCons:(ReactCons *)capture$0;
@end

@interface ReactReactor_$2 : ReactReactor_Runs {
 @public
  ReactReactor *this$0_;
  ReactCons *val$cons_;
}

@property (nonatomic, retain) ReactReactor *this$0;
@property (nonatomic, retain) ReactCons *val$cons;

- (void)run;
- (id)initWithReactReactor:(ReactReactor *)outer$
             withReactCons:(ReactCons *)capture$0;
@end

@interface ReactReactor_$3 : ReactReactor_Runs {
 @public
  ReactReactor *this$0_;
  id val$listener_;
}

@property (nonatomic, retain) ReactReactor *this$0;
@property (nonatomic, retain) id val$listener;

- (void)run;
- (id)initWithReactReactor:(ReactReactor *)outer$
                    withId:(id)capture$0;
@end