#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "LNJsonHeader.h"
#import "NSArray+LNModel.h"
#import "NSObject+LNModel.h"

FOUNDATION_EXPORT double LNJSONModelVersionNumber;
FOUNDATION_EXPORT const unsigned char LNJSONModelVersionString[];

