#import "NSNullDammit.h"

@implementation NSObject (NSNullDammit)

- (void) setToNull:(NSString*)key
{
    SEL setter = NSSelectorFromString(key);
    if ( [self respondsToSelector:setter] )
        [self performSelector:setter withObject:[NSNull null]];
    else
        [self performSelector:@selector(setObject:forKey:) withObject:[NSNull null] withObject:key];
}

@end
