#import "NSNullDammit.h"

@implementation NSObject (NSNullDammit)

- (void) setToNull:(NSString*)key
{
    SEL setter = NSSelectorFromNSString(key);
    if ( [self respondsToSelector:SEL] )
        [self performSelector:SEL withObject:[NSNull null]];
    else
        [self performSelector:@selector(setObject:forKey:) withObject:[NSNull null] withObject:key];
}

@end
