#import <Foundation/Foundation.h>

void nslog(const char *str) {
  NSLog(@"log: %@", [NSString stringWithUTF8String: str]);
}
