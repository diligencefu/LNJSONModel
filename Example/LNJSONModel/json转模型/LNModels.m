//
//  LNModels.m
//  NSObject_Proj
//
//  Created by MAC on 2020/11/4.
//

#import "LNModels.h"


@implementation XXAdressModel

@end


@implementation XXStudentModel

#warning 如果有特殊嵌套，比如字典包括数组，数组内容也是需要解析的话，要按此方式注明类型
+ (NSDictionary *)modelContainerPropertyGenericClass {
    //需要特别处理的属性
    return @{
             @"courses" : [XXCourseModel class],
             @"uid" : @"id"
             };
}

@end

@implementation XXCourseModel

@end
