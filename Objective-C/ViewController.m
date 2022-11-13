//
//  ViewController.m
//  Objective-C
//
//  Created by Андрей Балобанов on 26.06.2022.
//

#import "ViewController.h"

@interface ViewController ()

//привязка outlet Label и TextField
@property (weak, nonatomic) IBOutlet UILabel *arrayNameLabel;
@property (weak, nonatomic) IBOutlet UITextField *addArrayNameTextField;

@property (weak, nonatomic) IBOutlet UILabel *numberLabel;
@property (weak, nonatomic) IBOutlet UITextField *resultTextField;

@end


@implementation ViewController

NSMutableArray *arrayName; //объявление изменяемого массива
NSString *name; //объявление текстовой переменной

- (void)viewDidLoad {
    [super viewDidLoad];
    arrayName = [[NSMutableArray alloc] init]; // загрузка изменяемого массива
}

// кнопка перечисления слов через запятую в TextField
- (IBAction)saveNameArrayButton:(id)sender {
    name = self.addArrayNameTextField.text;
    [arrayName addObject: [NSString stringWithString: name]];
    self.arrayNameLabel.text = [arrayName componentsJoinedByString: @", "];
}


//возведение числа в степень и появление в TextField
- (IBAction)resultDegreeTwo:(id)sender {
    
    NSString *number = self.resultTextField.text;
    NSCharacterSet *charSet = [NSCharacterSet characterSetWithCharactersInString: number];
    NSCharacterSet *numSet = [NSCharacterSet decimalDigitCharacterSet];
    
    if([numSet isSupersetOfSet: charSet])
    {
        int myInt = (int)round( [number intValue]);
        self.numberLabel.text = [@(pow(myInt,2)) description]; }
    else {
        self.numberLabel.text = @"введите целое число";
    }
}

@end
