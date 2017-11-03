//
//  Contacts.h
//  Day 2 - Contact
//
//  Created by Murat Ekrem Kolcalar on 11/2/17.
//  Copyright © 2017 mumu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property (nonatomic, strong) NSString* firstName;
@property (nonatomic, strong) NSString* lastName;
@property (nonatomic, strong) NSString* email;
@property (nonatomic) int age;

@end
