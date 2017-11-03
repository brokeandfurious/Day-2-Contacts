//
//  main.m
//  Day 2 - Contacts
//
//  Created by Murat Ekrem Kolcalar on 11/2/17.
//  Copyright © 2017 mumu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
#import "ContactList.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Contact* contact = [[Contact alloc]init];
        ContactList* contactList = [[ContactList alloc]init];
        InputCollector* inputCollector = [[InputCollector alloc]init];
        NSString *usernameInput = [inputCollector inputForPrompt:@"\nAdd Contact: 'add'\nList Contacts: 'list'\nQuit: 'quit'\nSearch: 'search'"];
        
        BOOL appOn = YES;
        while (appOn == YES) {
            
            if ([usernameInput isEqualToString:@"quit"]) {
                NSLog(@"Bye bitch.");
                break;
            } else if ([usernameInput isEqualToString:@"add"]) {
                //Get Contact Info
                contact.firstName = [inputCollector inputForPrompt:@"First Name"];
                contact.lastName = [inputCollector inputForPrompt:@"Last Name"];
                contact.email = [inputCollector inputForPrompt:@"Email"];
                contact.age = [[inputCollector inputForPrompt:@"Age"] intValue];
                //Store Contact in Array
                [contactList addContact:contact];
                //Print Current Contacts
                [contactList listContacts];
            } else if ([usernameInput isEqualToString:@"list"]) {
                //Print Current Contacts - As soon as I've created a contact, the commands "quit", "list" etc. become unusable and I have to restart the app.
                //[contactList listContacts];
            }
            
        }
        
    }
    return 0;
}
