//
//  InputCollector.m
//  Day 2 - Contacts
//
//  Created by Murat Ekrem Kolcalar on 11/2/17.
//  Copyright © 2017 mumu. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString*)inputForPrompt:(NSString*)promptString {
    NSLog(@"%@", promptString);
    char inputChars[50];
    fgets(inputChars, 50, stdin);
    NSString* typedShit = [[NSString stringWithCString:inputChars encoding: NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return typedShit;
}

@end
