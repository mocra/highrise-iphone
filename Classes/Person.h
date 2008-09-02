//
//  Person.h
//  Highrise
//
//  Created by Dr Nic on 1/09/08.
//  Copyright 2008 Mocra. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface Person : NSObject {
  NSString *name;
}
@property (copy,nonatomic) NSString *name;

+ (Person *)personWithName:(NSString *)name;
@end
