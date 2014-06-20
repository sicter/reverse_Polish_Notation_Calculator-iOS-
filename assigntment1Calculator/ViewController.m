//
//  ViewController.m
//  assigntment1Calculator
//
//  Created by Edward Aryee on 4/11/14.
//  Copyright (c) 2014 EdwardAryee_ENGR103. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
   [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _operationArray = [[NSMutableArray alloc] initWithObjects: nil];
    _finalArray = [[NSMutableArray alloc] initWithObjects: nil];
    
    _answerOutlet.textAlignment = NSTextAlignmentCenter;
    _answerOutlet.text = @"0";
    
    _operationOutlet.textAlignment = NSTextAlignmentCenter;
    
    _notEnough = [[UIAlertView alloc]
     initWithTitle:@"Error"
     message:@"No numbers left: operation incomplete"
     delegate:nil
     cancelButtonTitle:@"OK"
     otherButtonTitles:nil];
    
    _clearing = [[UIAlertView alloc]
                  initWithTitle:@"Clear All"
                  message:@"You cannot undo this action"
                  delegate:self
                  cancelButtonTitle:@"Don't Clear"
                  otherButtonTitles:@"Clear", nil];
}

- (void)didReceiveMemoryWarning
{
   [super didReceiveMemoryWarning];
    //Dispose of any resources that can be recreated.
}

- (IBAction)Space:(id)sender {
}

- (IBAction)one:(id)sender {
    NSString *numString = @"1";
    NSString *operationString = _operationOutlet.text;
    NSString *newOutput = [operationString stringByAppendingString:numString];
    _operationOutlet.text = newOutput;
    
    [_operationArray addObject:(@1)];
}

- (IBAction)two:(id)sender {
    NSString *numString = @"2";
    NSString *operationString = _operationOutlet.text;
    NSString *newOutput = [operationString stringByAppendingString:numString];
    _operationOutlet.text = newOutput;
    
    [_operationArray addObject:(@2)];
}

- (IBAction)three:(id)sender {
    NSString *numString = @"3";
    NSString *operationString = _operationOutlet.text;
    NSString *newOutput = [operationString stringByAppendingString:numString];
    _operationOutlet.text = newOutput;

    [_operationArray addObject:(@3)];
}

- (IBAction)four:(id)sender {
    NSString *numString = @"4";
    NSString *operationString = _operationOutlet.text;
    NSString *newOutput = [operationString stringByAppendingString:numString];
    _operationOutlet.text = newOutput;
    
    [_operationArray addObject:(@4)];
}

- (IBAction)five:(id)sender {
    NSString *numString = @"5";
    NSString *operationString = _operationOutlet.text;
    NSString *newOutput = [operationString stringByAppendingString:numString];
    _operationOutlet.text = newOutput;
    
    [_operationArray addObject:(@5)];
}

- (IBAction)six:(id)sender {
    NSString *numString = @"6";
    NSString *operationString = _operationOutlet.text;
    NSString *newOutput = [operationString stringByAppendingString:numString];
    _operationOutlet.text = newOutput;
    
    [_operationArray addObject:(@6)];
}

- (IBAction)seven:(id)sender {
    NSString *numString = @"7";
    NSString *operationString = _operationOutlet.text;
    NSString *newOutput = [operationString stringByAppendingString:numString];
    _operationOutlet.text = newOutput;
    
    [_operationArray addObject:(@7)];
}

- (IBAction)eight:(id)sender {
    NSString *numString = @"8";
    NSString *operationString = _operationOutlet.text;
    NSString *newOutput = [operationString stringByAppendingString:numString];
    _operationOutlet.text = newOutput;
    
    [_operationArray addObject:(@8)];
}

- (IBAction)nine:(id)sender {
    NSString *numString = @"9";
    NSString *operationString = _operationOutlet.text;
    NSString *newOutput = [operationString stringByAppendingString:numString];
    _operationOutlet.text = newOutput;
    
    [_operationArray addObject:(@9)];
}

- (IBAction)zero:(id)sender {
    NSString *numString = @"0";
    NSString *operationString = _operationOutlet.text;
    NSString *newOutput = [operationString stringByAppendingString:numString];
    _operationOutlet.text = newOutput;
    
    [_operationArray addObject:(@0)];
}

- (IBAction)addition:(id)sender {
    NSString *numString = @"+";
    NSString *operationString = _operationOutlet.text;
    
    double number = 0;
    NSNumber *lastNumber;
    
    if ([_finalArray count] < 1 || ([_finalArray count] < 2 &&[_operationArray count] < 1))
    {
        [_notEnough show];
    }
    else
    {
        NSString *newOutput = [operationString stringByAppendingString:numString];
        _operationOutlet.text = newOutput;
        if([_operationArray count] > 0){
            
            for(int i = 0; i < [_operationArray count]; i++)
            {
                number = number + [_operationArray[i] doubleValue] * pow(10.0,((double)([_operationArray count]-(i+1))));
            }
            [_operationArray removeAllObjects];
            [_finalArray addObject:([NSNumber numberWithDouble:number])];
            
            lastNumber = _finalArray.lastObject;
            
            NSNumber *penultimateNumber = _finalArray[_finalArray.count - 2];
            
            _theResult = @(lastNumber.integerValue + penultimateNumber.integerValue);
            
            [_finalArray removeLastObject];
            [_finalArray removeLastObject];
            [_finalArray addObject:(_theResult)];
        }
        else if([_operationArray count] <= 0)
        {
            lastNumber = _finalArray.lastObject;
            
            NSNumber *penultimateNumber = _finalArray[_finalArray.count - 2];
            
            _theResult = @(lastNumber.integerValue + penultimateNumber.integerValue);
            
            [_finalArray removeLastObject];
            [_finalArray removeLastObject];
            [_finalArray addObject:(_theResult)];
        }
    }
}

- (IBAction)subtraction:(id)sender {
    NSString *numString = @"-";
    NSString *operationString = _operationOutlet.text;
    
    double number = 0;
    NSNumber *lastNumber;
    
    if ([_finalArray count] < 1 || ([_finalArray count] < 2 &&[_operationArray count] < 1))
    {
        [_notEnough show];
    }
    else
    {
        NSString *newOutput = [operationString stringByAppendingString:numString];
        _operationOutlet.text = newOutput;
        if([_operationArray count] > 0){
            
            for(int i = 0; i < [_operationArray count]; i++)
            {
                number = number + [_operationArray[i] doubleValue] * pow(10.0,((double)([_operationArray count]-(i+1))));
            }
            [_operationArray removeAllObjects];
            [_finalArray addObject:([NSNumber numberWithDouble:number])];
            
            lastNumber = _finalArray.lastObject;
            
            NSNumber *penultimateNumber = _finalArray[_finalArray.count - 2];
            
            _theResult = @(penultimateNumber.integerValue- lastNumber.integerValue );
            
            [_finalArray removeLastObject];
            [_finalArray removeLastObject];
            [_finalArray addObject:(_theResult)];
        }
        else if([_operationArray count] <= 0)
        {
            lastNumber = _finalArray.lastObject;
            
            NSNumber *penultimateNumber = _finalArray[_finalArray.count - 2];
            
            _theResult = @(penultimateNumber.integerValue - lastNumber.integerValue);
            
            [_finalArray removeLastObject];
            [_finalArray removeLastObject];
            [_finalArray addObject:(_theResult)];
        }
    }
}

- (IBAction)multiplication:(id)sender {
    NSString *numString = @"*";
    NSString *operationString = _operationOutlet.text;
    
    double number = 0;
    NSNumber *lastNumber;
    
    if ([_finalArray count] < 1 || ([_finalArray count] < 2 &&[_operationArray count] < 1))
    {
        [_notEnough show];
    }
    else
    {
        NSString *newOutput = [operationString stringByAppendingString:numString];
        _operationOutlet.text = newOutput;
        if([_operationArray count] > 0){
            
            for(int i = 0; i < [_operationArray count]; i++)
            {
                number = number + [_operationArray[i] doubleValue] * pow(10.0,((double)([_operationArray count]-(i+1))));
            }
            [_operationArray removeAllObjects];
            [_finalArray addObject:([NSNumber numberWithDouble:number])];
            
            lastNumber = _finalArray.lastObject;
            
            NSNumber *penultimateNumber = _finalArray[_finalArray.count - 2];
            
            _theResult = @(lastNumber.integerValue * penultimateNumber.integerValue);
            
            [_finalArray removeLastObject];
            [_finalArray removeLastObject];
            [_finalArray addObject:(_theResult)];
        }
        else if([_operationArray count] <= 0)
        {
            lastNumber = _finalArray.lastObject;
            
            NSNumber *penultimateNumber = _finalArray[_finalArray.count - 2];
            
            _theResult = @(lastNumber.integerValue * penultimateNumber.integerValue);
            
            [_finalArray removeLastObject];
            [_finalArray removeLastObject];
            [_finalArray addObject:(_theResult)];
        }
    }
}

- (IBAction)division:(id)sender {
    NSString *numString = @"/";
    NSString *operationString = _operationOutlet.text;
    
    double number = 0;
    NSNumber *lastNumber;
    
    if ([_finalArray count] < 1 || ([_finalArray count] < 2 &&[_operationArray count] < 1))
    {
        [_notEnough show];
    }
    else
    {
        NSString *newOutput = [operationString stringByAppendingString:numString];
        _operationOutlet.text = newOutput;
        if([_operationArray count] > 0){
            
            for(int i = 0; i < [_operationArray count]; i++)
            {
                number = number + [_operationArray[i] doubleValue] * pow(10.0,((double)([_operationArray count]-(i+1))));
            }
            [_operationArray removeAllObjects];
            [_finalArray addObject:([NSNumber numberWithDouble:number])];
            
            lastNumber = _finalArray.lastObject;
            
            NSNumber *penultimateNumber = _finalArray[_finalArray.count - 2];
            
            _theResult = @(penultimateNumber.integerValue / lastNumber.integerValue );
            
            [_finalArray removeLastObject];
            [_finalArray removeLastObject];
            [_finalArray addObject:(_theResult)];
        }
        else if([_operationArray count] <= 0)
        {
            lastNumber = _finalArray.lastObject;
            
            NSNumber *penultimateNumber = _finalArray[_finalArray.count - 2];
            
            _theResult = @(penultimateNumber.integerValue / lastNumber.integerValue);
            
            [_finalArray removeLastObject];
            [_finalArray removeLastObject];
            [_finalArray addObject:(_theResult)];
        }
    }
}
- (IBAction)space:(id)sender {
    NSString *spaceString = @" ";
    NSString *operationString = _operationOutlet.text;
    NSString *newOutput = [operationString stringByAppendingString:spaceString];
    _operationOutlet.text = newOutput;

    double number = 0;
    for(int i = 0; i < [_operationArray count]; i++)
    {
        number = number + [_operationArray[i] doubleValue] * pow(10.0,((double)([_operationArray count]-(i+1))));
    }
    
    [_finalArray addObject:([NSNumber numberWithDouble:number])];
    [_operationArray removeAllObjects];
}

- (IBAction)enter:(id)sender {
    if([[_theResult stringValue] isEqualToString:@""])
    {
        [_notEnough show];
    }
    else
    {
        _answerOutlet.text = [_theResult stringValue];
    }
}
- (IBAction)clearAll:(id)sender {
    //[_clearing show];
   
            _theResult = @0;
            _answerOutlet.text = [_theResult stringValue];
            _operationOutlet.text = @"";
            [_operationArray removeAllObjects];
            [_finalArray removeAllObjects];

}

@end
