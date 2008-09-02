//
//  ContactDetailsViewController.h
//  Highrise
//
//  Created by Dr Nic on 2/09/08.
//  Copyright 2008 Mocra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

@interface ContactDetailsViewController : UITableViewController {
  Person *person;
}
@property (retain) Person *person;

- (id)initWithPerson:(Person *)aPerson;

@end
