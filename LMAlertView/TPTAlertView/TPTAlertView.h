//
//  TPTAlertView.h
//  Fashionary
//
//  Created by Lung on 1/9/14.
//  Copyright (c) 2014 Fashionary. All rights reserved.
//

#import "LMAlertView.h"

@interface TPTAlertView : LMAlertView <UIAlertViewDelegate>

@property (copy, nonatomic) void (^completion)(BOOL, NSInteger);

- (id)initWithTitle:(NSString *)title
            message:(NSString *)message
  cancelButtonTitle:(NSString *)cancelButtonTitle
  otherButtonTitles:(NSArray *)otherButtonTitles
         completion:(void (^)(BOOL cancenlled, NSInteger index))completion;

@end

