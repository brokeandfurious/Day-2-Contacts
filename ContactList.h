//
//  ContactList.h
//  Day 2 - Contacts
//
//  Created by Murat Ekrem Kolcalar on 11/2/17.
//  Copyright © 2017 mumu. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Contact;
@interface ContactList : NSObject

@property (nonatomic) NSMutableArray *contactList;

- (void) addContact: (Contact*) contactInfo;
- (void) listContacts;

@end
