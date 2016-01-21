#import "___FILEBASENAME___.h"

@interface ___FILEBASENAMEASIDENTIFIER___()
@property(nonnull, nonatomic, strong) id<___FILEBASENAMEASIDENTIFIER___Protocol> implementation;
@end

#pragma clang diagnostic ignored "-Wprotocol"
@implementation ___FILEBASENAMEASIDENTIFIER___

- (instancetype)initWithImplementation:(id<___FILEBASENAMEASIDENTIFIER___Protocol>)implementation {
    if (self = [super init]) {
        self.implementation = implementation;
    }
    return self;
}

#pragma mark forward

- (void)forwardInvocation:(NSInvocation *)anInvocation {
    if ([self.implementation respondsToSelector:anInvocation.selector]) {
        [anInvocation invokeWithTarget:self.implementation];
    } else {
        [super forwardInvocation:anInvocation];
    }
}

@end