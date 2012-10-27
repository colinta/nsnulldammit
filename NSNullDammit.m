#import "NSNullDammit.h"

@implementation NSObject (NSNullDammit)

- (void) setToNull:(NSString*)key
{
    [NSNullDammit setToNull:key target:self];
}

@end


@implementation NSNullDammit

+ (void) setToNull:(NSString*)key target:(id)object
{
    SEL setter = NSSelectorFromString(key);
    if ( [object respondsToSelector:setter] )
        [object performSelector:setter withObject:[NSNull null]];
    else
        [object performSelector:@selector(setObject:forKey:) withObject:[NSNull null] withObject:key];

}

@end
