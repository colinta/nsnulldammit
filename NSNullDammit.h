#import <Foundation/Foundation.h>

@interface NSObject (NSNullDammit)

- (void) setToNull:(NSString*)key;
- (void) setIndexToNull:(NSInteger)index;
- (void) appendNull;

@end


@interface NSNullDammit : NSObject

+ (void) setToNull:(NSString*)key target:(id)object;
+ (void) setIndexToNull:(NSInteger)index target:(id)object;
+ (void) appendNullTo:(id)object;

@end
