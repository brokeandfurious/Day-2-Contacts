//
//  ContactList.m
//  Day 2 - Contacts
//
//  Created by Murat Ekrem Kolcalar on 11/2/17.
//  Copyright © 2017 mumu. All rights reserved.
//

#import "Contact.h"
#import "ContactList.h"
@class Contact;

@implementation ContactList

- (id) init
{
    self = [super init];
    if (self) {
        _contactList = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void) addContact:(Contact*)contact {
    [self.contactList addObject:contact];
}

- (void) listContacts {
    for (Contact* contact in _contactList) {
        NSLog(@"%lu: %@ %@ - %i (%@)", [self.contactList indexOfObject:contact], contact.firstName, contact.lastName, contact.age, contact.email);
    }
}

@end
