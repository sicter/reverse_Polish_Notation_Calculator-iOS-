//
//  ViewController.h
//  assigntment1Calculator
//
//  Created by Edward Aryee on 4/11/14.
//  Copyright (c) 2014 EdwardAryee_ENGR103. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *operationOutlet;

@property (weak, nonatomic) IBOutlet UILabel *answerOutlet;

- (IBAction)clearAll:(id)sender;

@property (strong, nonatomic) NSMutableArray *operationArray;

@property (strong, nonatomic) NSMutableArray *finalArray;

@property (strong, nonatomic) NSNumber *theResult;

@property (strong, nonatomic) UIAlertView *notEnough;

@property (strong, nonatomic) UIAlertView *clearing;

- (IBAction)Space:(id)sender;

- (IBAction)one:(id)sender;

- (IBAction)two:(id)sender;

- (IBAction)three:(id)sender;

- (IBAction)four:(id)sender;

- (IBAction)five:(id)sender;

- (IBAction)six:(id)sender;

- (IBAction)seven:(id)sender;

- (IBAction)eight:(id)sender;

- (IBAction)nine:(id)sender;

- (IBAction)zero:(id)sender;

- (IBAction)addition:(id)sender;

- (IBAction)subtraction:(id)sender;

- (IBAction)multiplication:(id)sender;

- (IBAction)division:(id)sender;


@end
