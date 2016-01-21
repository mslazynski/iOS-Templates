#import "___FILEBASENAME___.h"

#define DEFINE_STRING_NAME(item) NSString *const k ## item ## Name = @#item;
___FILEBASENAMEASIDENTIFIER___MacroList(DEFINE_STRING_NAME)
#undef DEFINE_STRING_NAME

@implementation ___FILEBASENAMEASIDENTIFIER___Class

#define DEFINE_ARRAY_STRING_MEMBER(item) k ## item ## Name,
+ (NSArray<NSString*>*)allNames {
    static NSArray *allNames = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        allNames = @[
                     ___FILEBASENAMEASIDENTIFIER___MacroList(DEFINE_ARRAY_STRING_MEMBER)
                     ];
    });
    return allNames;
}
#undef DEFINE_ARRAY_STRING_MEMBER

#define DEFINE_ARRAY_NUMBER_MEMBER(item) @(item),
+ (NSArray<NSNumber*>*)allItems {
    static NSArray *allItems = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        allItems = @[
                     ___FILEBASENAMEASIDENTIFIER___MacroList(DEFINE_ARRAY_NUMBER_MEMBER)
                     ];
    });
    return allItems;
}
#undef DEFINE_ARRAY_NUMBER_MEMBER

#define DEFINE_SWITCH_CASE_ITEM(item) case item: return k ## item ## Name;
+ (NSString*)stringFromItem:(___FILEBASENAMEASIDENTIFIER___)item {
    switch (item) {
            ___FILEBASENAMEASIDENTIFIER___MacroList(DEFINE_SWITCH_CASE_ITEM)
        // Put the default enum name here
        default: return ?;
    }
}
#undef DEFINE_SWITCH_CASE_ITEM

#define DEFINE_DICT_MEMBER(item) k ## item ## Name : @(item),
+ (___FILEBASENAMEASIDENTIFIER___)itemFromString:(NSString*)string {
    static NSDictionary *nameToItem = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        nameToItem = @{
                       ___FILEBASENAMEASIDENTIFIER___MacroList(DEFINE_DICT_MEMBER)
                       };
    });
    NSNumber *itemNumber = nameToItem[string];
    if (itemNumber) {
        return [itemNumber integerValue];
    } else {
        // Put the default enum item here
        return ?;
    }
}
#undef DEFINE_DICT_MEMBER


@end