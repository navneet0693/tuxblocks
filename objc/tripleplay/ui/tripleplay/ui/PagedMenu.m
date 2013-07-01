//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/PagedMenu.java
//
//  Created by Thomas on 7/1/13.
//

#import "java/lang/Integer.h"
#import "java/util/List.h"
#import "react/Slot.h"
#import "react/UnitSlot.h"
#import "react/Value.h"
#import "react/ValueView.h"
#import "tripleplay/ui/Layout.h"
#import "tripleplay/ui/MenuItem.h"

@implementation TripleplayUiPagedMenu

@synthesize itemsPerPage = itemsPerPage_;
- (ReactValue *)_page {
  return _page_;
}
- (void)set_page:(ReactValue *)_page {
  JreOperatorRetainedAssign(&_page_, self, _page);
}
@synthesize _page = _page_;
- (ReactValue *)_numPages {
  return _numPages_;
}
- (void)set_numPages:(ReactValue *)_numPages {
  JreOperatorRetainedAssign(&_numPages_, self, _numPages);
}
@synthesize _numPages = _numPages_;

- (id)initWithTripleplayUiLayout:(TripleplayUiLayout *)layout
                         withInt:(int)itemsPerPage {
  if ((self = [super initWithTripleplayUiLayout:layout])) {
    JreOperatorRetainedAssign(&_page_, self, ((ReactValue *) [ReactValue createWithId:[JavaLangInteger valueOfWithInt:0]]));
    JreOperatorRetainedAssign(&_numPages_, self, ((ReactValue *) [ReactValue createWithId:[JavaLangInteger valueOfWithInt:0]]));
    self.itemsPerPage = itemsPerPage;
  }
  return self;
}

- (id<ReactValueView>)page {
  return _page_;
}

- (id<ReactValueView>)numPages {
  return _numPages_;
}

- (ReactSlot *)pageSlot {
  return [[[TripleplayUiPagedMenu_$1 alloc] initWithTripleplayUiPagedMenu:self] autorelease];
}

- (ReactUnitSlot *)incrementPageWithInt:(int)delta {
  return [[[TripleplayUiPagedMenu_$2 alloc] initWithTripleplayUiPagedMenu:self withInt:delta] autorelease];
}

- (int)getPage {
  return [((JavaLangInteger *) [((ReactValue *) NIL_CHK(_page_)) get]) intValue];
}

- (TripleplayUiPagedMenu *)setPageWithInt:(int)page {
  int oldPage = [((JavaLangInteger *) [((ReactValue *) NIL_CHK(_page_)) get]) intValue];
  if (page != oldPage) {
    (void) [((ReactValue *) NIL_CHK(_page_)) updateWithId:[JavaLangInteger valueOfWithInt:page]];
    [self updateVisibilityWithInt:oldPage withInt:oldPage];
    [self updateVisibilityWithInt:page withInt:page];
  }
  return self;
}

- (int)pageOfItemWithInt:(int)itemIdx {
  return itemIdx / itemsPerPage_;
}

- (void)updateNumPages {
  int numItems = [((id<JavaUtilList>) NIL_CHK(_items_)) size];
  (void) [((ReactValue *) NIL_CHK(_numPages_)) updateWithId:[JavaLangInteger valueOfWithInt:numItems == 0 ? 0 : (numItems - 1) / itemsPerPage_ + 1]];
}

- (void)updateVisibilityWithInt:(int)fromPage
                        withInt:(int)toPage {
  int itemIdx = fromPage * itemsPerPage_, size = [((id<JavaUtilList>) NIL_CHK(_items_)) size];
  for (int pp = fromPage; pp <= toPage; ++pp) {
    BOOL vis = pp == [((JavaLangInteger *) [((ReactValue *) NIL_CHK(_page_)) get]) intValue];
    for (int ii = 0; ii < itemsPerPage_; ii++) {
      if (itemIdx >= size) break;
      (void) [((TripleplayUiMenuItem *) [((id<JavaUtilList>) NIL_CHK(_items_)) getWithInt:itemIdx++]) setVisibleWithBOOL:vis];
    }
  }
}

- (void)connectItemWithTripleplayUiMenuItem:(TripleplayUiMenuItem *)item {
  int itemIdx = [((id<JavaUtilList>) NIL_CHK(_items_)) size];
  [super connectItemWithTripleplayUiMenuItem:item];
  [self updateNumPages];
  int page = [self pageOfItemWithInt:itemIdx];
  if (page != [((JavaLangInteger *) [((ReactValue *) NIL_CHK(_page_)) get]) intValue]) (void) [((TripleplayUiMenuItem *) NIL_CHK(item)) setVisibleWithBOOL:NO];
  if (page <= [((JavaLangInteger *) [((ReactValue *) NIL_CHK(_page_)) get]) intValue]) [self updateVisibilityWithInt:[((JavaLangInteger *) [((ReactValue *) NIL_CHK(_page_)) get]) intValue] withInt:[((JavaLangInteger *) [((ReactValue *) NIL_CHK(_page_)) get]) intValue] + 1];
}

- (void)didDisconnectItemWithTripleplayUiMenuItem:(TripleplayUiMenuItem *)item
                                          withInt:(int)itemIdx {
  [self updateNumPages];
  if (((JavaLangInteger *) [((ReactValue *) NIL_CHK(_page_)) get]) == ((JavaLangInteger *) [((ReactValue *) NIL_CHK(_numPages_)) get])) (void) [self incrementPageWithInt:-1];
  else {
    int page = [self pageOfItemWithInt:itemIdx];
    if (page < [((JavaLangInteger *) [((ReactValue *) NIL_CHK(_page_)) get]) intValue]) [self updateVisibilityWithInt:[((JavaLangInteger *) [((ReactValue *) NIL_CHK(_page_)) get]) intValue] - 1 withInt:[((JavaLangInteger *) [((ReactValue *) NIL_CHK(_page_)) get]) intValue]];
    else if (page == [((JavaLangInteger *) [((ReactValue *) NIL_CHK(_page_)) get]) intValue]) [self updateVisibilityWithInt:[((JavaLangInteger *) [((ReactValue *) NIL_CHK(_page_)) get]) intValue] withInt:[((JavaLangInteger *) [((ReactValue *) NIL_CHK(_page_)) get]) intValue]];
  }
}

- (void)dealloc {
  JreOperatorRetainedAssign(&_numPages_, self, nil);
  JreOperatorRetainedAssign(&_page_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiPagedMenu *typedCopy = (TripleplayUiPagedMenu *) copy;
  typedCopy.itemsPerPage = itemsPerPage_;
  typedCopy._page = _page_;
  typedCopy._numPages = _numPages_;
}

@end
@implementation TripleplayUiPagedMenu_$1

- (TripleplayUiPagedMenu *)this$0 {
  return this$0_;
}
- (void)setThis$0:(TripleplayUiPagedMenu *)this$0 {
  JreOperatorRetainedAssign(&this$0_, self, this$0);
}
@synthesize this$0 = this$0_;

- (void)onEmitWithId:(JavaLangInteger *)page {
  (void) [this$0_ setPageWithInt:[((JavaLangInteger *) NIL_CHK(page)) intValue]];
}

- (id)initWithTripleplayUiPagedMenu:(TripleplayUiPagedMenu *)outer$ {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&this$0_, self, outer$);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&this$0_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiPagedMenu_$1 *typedCopy = (TripleplayUiPagedMenu_$1 *) copy;
  typedCopy.this$0 = this$0_;
}

@end
@implementation TripleplayUiPagedMenu_$2

- (TripleplayUiPagedMenu *)this$0 {
  return this$0_;
}
- (void)setThis$0:(TripleplayUiPagedMenu *)this$0 {
  JreOperatorRetainedAssign(&this$0_, self, this$0);
}
@synthesize this$0 = this$0_;
@synthesize val$delta = val$delta_;

- (void)onEmit {
  (void) [this$0_ setPageWithInt:[((JavaLangInteger *) [((ReactValue *) NIL_CHK(this$0_._page)) get]) intValue] + val$delta_];
}

- (id)initWithTripleplayUiPagedMenu:(TripleplayUiPagedMenu *)outer$
                            withInt:(int)capture$0 {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&this$0_, self, outer$);
    val$delta_ = capture$0;
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&this$0_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiPagedMenu_$2 *typedCopy = (TripleplayUiPagedMenu_$2 *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.val$delta = val$delta_;
}

@end