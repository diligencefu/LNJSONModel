//
//  NSArray+LNModel.m
//  LNJSONModel
//
//  Created by MAC on 2020/11/5.
//

#import "NSArray+LNModel.h"
#import "NSObject+LNModel.h"

@implementation NSArray (LNModel)

+(NSArray *)serializationToModelsWithModel:(Class)cls forJson:(NSArray *)jsonArr {
    NSMutableArray *array = [NSMutableArray array];
    
    for (id data in jsonArr) {
        if ([data isKindOfClass:[NSArray class]]) {
            [array addObject:[self serializationToModelsWithModel:cls forJson:jsonArr]];
            continue;
        }
        if ([data isKindOfClass:[NSDictionary class]]) {
            [array addObject:[cls ln_modelWithDictionary:data]];
            continue;
        }
        
        NSAssert(1==2, @"md，我需要的是json数据！！！");
    }
    return array;
}


+ (instancetype _Nullable )arrayWithModel:(Class)cls forJson:(id)json {
        
    if (!json) return nil;
    NSArray *arr = nil;
    NSData *jsonData = nil;
    if ([json isKindOfClass:[NSArray class]]) {
        arr = json;
    } else if ([json isKindOfClass:[NSString class]]) {
        jsonData = [(NSString *)json dataUsingEncoding : NSUTF8StringEncoding];
    } else if ([json isKindOfClass:[NSData class]]) {
        jsonData = json;
    }
    if (jsonData) {
        arr = [NSJSONSerialization JSONObjectWithData:jsonData options:kNilOptions error:NULL];
        if (![arr isKindOfClass:[NSArray class]]) arr = nil;
    }
    
    return [self serializationToModelsWithModel:cls forJson:arr];
}

@end
