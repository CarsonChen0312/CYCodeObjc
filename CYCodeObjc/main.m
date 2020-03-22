//
//  main.m
//  CYCodeObjc
//
//  Created by Carson on 2020/3/23.
//  Copyright © 2020 carson. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <Foundation/Foundation.h>
#import "CYPerson.h"
#import "CYUSACoder.h"
#import "CYChineseCoder.h"

void testPerson() {
    CYPerson *person = [[CYPerson alloc] initWithName:@"Carson"
                                                 gender:CYPersonGenderMale];
    NSLog(@"%@", person);
}

void testUSACoder() {
    CYPerson *person = [[CYPerson alloc] initWithName:@"Carson"
                                                 gender:CYPersonGenderMale];
    CYUSACoder *usaCoder = [[CYUSACoder alloc] initWithName:@"Tom"
                                                       gender:CYPersonGenderMale];
    [usaCoder CY_PlayBasketBallWithPerson:person];
}

void testChinessCoder() {
    CYChineseCoder *coder = [[CYChineseCoder alloc] initWithName:@"Carson"
                                                            gender:CYPersonGenderMale
                                                               age:27];
    CYUSACoder *partner = [[CYUSACoder alloc] initWithName:@"KaKa"
                                                      gender:CYPersonGenderFemale];
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

