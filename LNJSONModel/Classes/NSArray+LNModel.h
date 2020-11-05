//
//  NSArray+LNModel.h
//  LNJSONModel
//
//  Created by MAC on 2020/11/5.
//


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (LNModel)

+ (instancetype _Nullable )arrayWithModel:(Class _Nonnull )cls forJson:(id _Nullable )json;

@end

NS_ASSUME_NONNULL_END
