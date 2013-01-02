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
    // change 'myProperty' to 'setMyProperty:'
    // head = 'setM'
    // tail = 'yProperty:'
    NSString *head = [@"set" stringByAppendingString:[[key substringWithRange:NSMakeRange(0, 1)] capitalizedString]];
    NSString *tail = [[key substringFromIndex:1] stringByAppendingString:@":"];
    SEL setter = NSSelectorFromString([head stringByAppendingString:tail]);
    if ( [object respondsToSelector:setter] )
        [object performSelector:setter withObject:[NSNull null]];
    else
        [object setObject:[NSNull null] forKey:key];
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
