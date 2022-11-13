//
//  ViewController.m
//  Objective-C
//
//  Created by Андрей Балобанов on 26.06.2022.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *arrayNameLabel;
@property (weak, nonatomic) IBOutlet UITextField *addArrayNameTextField;

@property (weak, nonatomic) IBOutlet UILabel *numberLabel;
@property (weak, nonatomic) IBOutlet UITextField *resultTextField;

@end

@implementation ViewController
NSMutableArray *arrayName;
NSString *name;

- (void)viewDidLoad {
    [super viewDidLoad];
    arrayName = [[NSMutableArray alloc] init];
}

- (IBAction)saveNameArrayButton:(id)sender {
    name = self.addArrayNameTextField.text;
    [arrayName addObject: [NSString stringWithString: name]];
    self.arrayNameLabel.text = [arrayName componentsJoinedByString: @", "];
}

- (IBAction)resultDegreeTwo:(id)sender {
    
    NSString *numberD = self.resultTextField.text;
    NSCharacterSet *charSet = [NSCharacterSet characterSetWithCharactersInString: numberD];
    NSCharacterSet *numSet = [NSCharacterSet decimalDigitCharacterSet];
    
    if([numSet isSupersetOfSet: charSet])
    {
        int myInt = (int)round( [numberD intValue]);
        self.numberLabel.text = [@(pow(myInt,2)) description]; }
    else {
        self.numberLabel.text = @"введите целое число";
    }
}

@end
