//  Created by ___FULLUSERNAME___ on ___DATE___.
// ___COPYRIGHT___

#import <Foundation/Foundation.h>

// Put your enum items into code calls
#define ___FILEBASENAMEASIDENTIFIER___MacroList(code) \
    code(?) \
    code(?)

#define DEFINE_ENUM_ITEM(item) item,
typedef NS_ENUM(NSUInteger, ___FILEBASENAMEASIDENTIFIER___) {
    ___FILEBASENAMEASIDENTIFIER___MacroList(DEFINE_ENUM_ITEM)
};
#undef DEFINE_ENUM_ITEM

#define DECLARE_EXTERN_STRING_NAME(item) extern NSString *const k ## item ## Name;
    ___FILEBASENAMEASIDENTIFIER___MacroList(DECLARE_EXTERN_STRING_NAME)
#undef DECLARE_EXTERN_STRING_NAME

@interface ___FILEBASENAMEASIDENTIFIER___Class  : NSObject

+ (NSArray<NSString*>*)allNames;
+ (NSArray<NSNumber*>*)allItems;
+ (NSString*)stringFromItem:(___FILEBASENAMEASIDENTIFIER___)item;
+ (___FILEBASENAMEASIDENTIFIER___)itemFromString:(NSString*)string;

@end