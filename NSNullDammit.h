#import <Foundation/Foundation.h>

@interface NSObject (NSNullDammit)

- (void) setToNull:(NSString*)key;

@end


@interface NSNullDammit : NSObject

+ (void) setToNull:(NSString*)key target:(id)object;

@end
