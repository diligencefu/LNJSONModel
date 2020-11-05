//
//  LNModels.h
//  NSObject_Proj
//
//  Created by MAC on 2020/11/4.
//

#import <Foundation/Foundation.h>
@class XXAdressModel, XXCourseModel;

@interface XXStudentModel : NSObject

/* 姓名 */
@property (nonatomic, copy) NSString *name;
/* 学生号 id */
@property (nonatomic, copy) NSString *uid;
/* 年龄 */
@property (nonatomic, assign) NSInteger age;
/* 体重 */
@property (nonatomic, assign) NSInteger weight;
/* 地址（嵌套模型） */
@property (nonatomic, strong) XXAdressModel *address;
/* 课程（嵌套模型数组） */
@property (nonatomic, strong) NSArray <XXCourseModel*>*courses;

@end



#import <Foundation/Foundation.h>

@interface XXAdressModel : NSObject

/* 国籍 */
@property (nonatomic, copy) NSString *country;
/* 省份 */
@property (nonatomic, copy) NSString *province;
/* 城市 */
@property (nonatomic, copy) NSString *city;

@end



#import <Foundation/Foundation.h>

@interface XXCourseModel : NSObject

/* 课程名 */
@property (nonatomic, copy) NSString *name;
/* 课程介绍 */
@property (nonatomic, copy) NSString *desc;
/* 课程介绍 */
@property (nonatomic, copy) NSString *grade;

@end

