//
//  NSObject+LNModel.h
//  LNJSONModel
//
//  Created by MAC on 2020/11/5.
//

#import <Foundation/Foundation.h>

@protocol LNModelProtocol <NSObject>

@optional
// 协议方法：返回一个字典，表明特殊字段的处理规则
+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass;

@end


NS_ASSUME_NONNULL_BEGIN

@interface NSObject (LNModel)<LNModelProtocol>

+ (instancetype _Nullable )ln_modelWithDictionary:(NSDictionary *_Nullable)dictionary;

@end

NS_ASSUME_NONNULL_END
