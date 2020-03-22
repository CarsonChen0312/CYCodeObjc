//
//  main.m
//  CYYCodeObjc
//
//  Created by Carson on 2020/3/22.
//  Copyright © 2020 carson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CYYPerson.h"
#import "CYYUSACoder.h"
#import "CYYChineseCoder.h"

void testPerson() {
    CYYPerson *person = [[CYYPerson alloc] initWithName:@"Carson"
                                                 gender:CYYPersonGenderMale];
    NSLog(@"%@", person);
}

void testUSACoder() {
    CYYPerson *person = [[CYYPerson alloc] initWithName:@"Carson"
                                                 gender:CYYPersonGenderMale];
    CYYUSACoder *usaCoder = [[CYYUSACoder alloc] initWithName:@"Tom"
                                                       gender:CYYPersonGenderMale];
    [usaCoder cyy_PlayBasketBallWithPerson:person];
}

void testChinessCoder() {
    CYYChineseCoder *coder = [[CYYChineseCoder alloc] initWithName:@"Carson"
                                                            gender:CYYPersonGenderMale
                                                               age:27];
    CYYUSACoder *partner = [[CYYUSACoder alloc] initWithName:@"KaKa"
                                                      gender:CYYPersonGenderFemale];
    NSLog(@"%@", [coder sayHelloWorld]);
    NSLog(@"%lu", (unsigned long)[coder preferLanguages]);
    [coder pairProgrammingWithPartner:partner];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        testPerson();
        testUSACoder();
        testChinessCoder();
    }
    return 0;
}
