#import "NSNullDammit.h"

@implementation NSObject (NSNullDammit)
- (void) setToNull:(NSString*)key
{
    [self setObject:[NSNull null] forKey:key];
}
@end
