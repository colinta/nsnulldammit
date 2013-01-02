#import "NSNullDammit.h"

@implementation NSObject (NSNullDammit)

- (void) setToNull:(NSString*)key
{
    [NSNullDammit setToNull:key target:self];
}

- (void) setIndexToNull:(NSInteger)index
{
    [NSNullDammit setIndexToNull:index target:self];
}

- (void) appendNull
{
    [NSNullDammit appendNullTo:self];
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

+ (void) setIndexToNull:(NSInteger)index target:(id)object
{
    if ( index >= [object count] )
        [object insertObject:[NSNull null] atIndex:index];
    else
        [object replaceObjectAtIndex:index withObject:[NSNull null]];
}

+ (void) appendNullTo:(id)object
{
    [object insertObject:[NSNull null] atIndex:[object count]];
}

@end
