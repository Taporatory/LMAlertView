//
//  TPTAlertView.m
//  Fashionary
//
//  Created by Lung on 1/9/14.
//  Copyright (c) 2014 Fashionary. All rights reserved.
//

#import "TPTAlertView.h"

@implementation TPTAlertView

- (id)initWithTitle:(NSString *)title
            message:(NSString *)message
  cancelButtonTitle:(NSString *)cancelButtonTitle
  otherButtonTitles:(NSArray *)otherButtonTitles
         completion:(void (^)(BOOL cancenlled, NSInteger index))completion {
    
    self = [self initWithTitle:title message:message delegate:self cancelButtonTitle:cancelButtonTitle otherButtonTitles:nil];
    self.completion = completion;
    
    if (self) {
        
    }
    return self;
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    if (self.completion) {
        self.completion(buttonIndex==self.cancelButtonIndex, buttonIndex);
        self.completion = nil;
    }
}

@end
