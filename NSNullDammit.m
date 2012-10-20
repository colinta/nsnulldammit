#import "NSNullDammit.h"

@implementation NSObject (NSNullDammit)

- (void) setToNull:(NSString*)key
{
    [self performSelector:@selector(setObject:forKey:) withObject:[NSNull null] withObject:key];
}

@end
