//
//  ContactsTableViewController.m
//  Highrise
//
//  Created by Dr Nic on 1/09/08.
//  Copyright 2008 Mocra. All rights reserved.
//

#import "ContactsTableViewController.h"
#import "Person.h"

@implementation ContactsTableViewController

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	NSLog(@"Total contacts: %d", [contacts count]);
	return [contacts count];
}

#define MyIdentifier @"MyIdentifier"

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
	if (cell == nil) {
		cell = [[[UITableViewCell alloc] initWithFrame:CGRectMake(0,0,0,0) reuseIdentifier:MyIdentifier] autorelease];
	}
	// Configure the cell
	Person *person = [contacts objectAtIndex:indexPath.row];
	
	cell.text = person.name;
	return cell;
}

// Puts > on each tableView item
- (UITableViewCellAccessoryType)tableView:(UITableView *)tableView accessoryTypeForRowWithIndexPath:(NSIndexPath *)indexPath
{
	return UITableViewCellAccessoryDisclosureIndicator;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	Person *person = [contacts objectAtIndex:indexPath.row];
	NSLog(@"%s %@", _cmd, person);
}

/*
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 }
 if (editingStyle == UITableViewCellEditingStyleInsert) {
 }
 }
 */
/*
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 return YES;
 }
 */
/*
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */
/*
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 return YES;
 }
 */


- (void)dealloc {
	[contacts release];
	[super dealloc];
}


- (void)viewDidLoad {
	// %w[Nic Anthony Rob].map {|name| Person.new(name)}
	// arrayWithObjects - autoreleases, so must retain
	contacts = [NSArray arrayWithObjects:
				[Person personWithName:@"Dr Nic"],
				[Person personWithName:@"Anthony"],
				[Person personWithName:@"Rob"],
				[Person personWithName:@"Nancy"],
				nil];
	[contacts retain];
	[super viewDidLoad];
}


- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
}

- (void)viewDidDisappear:(BOOL)animated {
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
}


@end

