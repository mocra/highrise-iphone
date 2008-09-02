//
//  Person.m
//  Highrise
//
//  Created by Dr Nic on 1/09/08.
//  Copyright 2008 Mocra. All rights reserved.
//

#import "Person.h"


@implementation Person
  @synthesize name;
  
  - (id)initWithName:(NSString *)theName
  {
    if([super init]) {
      self.name = theName;
      return self;
    }
	return nil;
  }
  
  + (Person *)personWithName:(NSString *)name
  {
    return [[[self alloc] initWithName:name] autorelease];
  }

- (NSString *)description
{
	return name;
}
  
@end
