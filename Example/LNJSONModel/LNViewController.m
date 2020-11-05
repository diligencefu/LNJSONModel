//
//  LNViewController.m
//  LNJSONModel
//
//  Created by diligencefu@sina.com on 11/05/2020.
//  Copyright (c) 2020 diligencefu@sina.com. All rights reserved.
//

#import "LNViewController.h"
#import <LNJSONModel/LNJsonHeader.h>
#import "LNModels.h"

@interface LNViewController ()

@end

@implementation LNViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self parseJSONArr];
}

- (void)parseJSONArr {
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"jsonFile" ofType:@"json"];
    NSData *jsonData = [NSData dataWithContentsOfFile:filePath];
    
    NSArray *dataArr = [NSArray arrayWithModel:XXStudentModel.class forJson:jsonData];
    
    for (XXStudentModel *student in dataArr) {
        NSLog(@"学号%@，家住%@%@%@的%@同学，考试成绩：",
              student.uid,
              student.address.country,
              student.address.province,
              student.address.city,
              student.name);
        
        for (unsigned int i = 0; i < student.courses.count; i++) {
            XXCourseModel *courseModel = student.courses[i];
            
            NSLog(@"%@----%@分", courseModel.desc, courseModel.grade);
        }
    }
}


- (void)parseJSON {
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"jsonFile" ofType:@"json"];
    NSData *jsonData = [NSData dataWithContentsOfFile:filePath];

    // 读取 JSON 数据
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:nil];
    NSLog(@"%@",json);

    // JSON 字典转模型
    XXStudentModel *student = [XXStudentModel ln_modelWithDictionary:json];

    NSLog(@"student.uid = %@", student.uid);
    NSLog(@"student.name = %@", student.name);

    for (unsigned int i = 0; i < student.courses.count; i++) {
        XXCourseModel *courseModel = student.courses[i];
        NSLog(@"courseModel[%d].name = %@ .desc = %@", i, courseModel.name, courseModel.desc);
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
