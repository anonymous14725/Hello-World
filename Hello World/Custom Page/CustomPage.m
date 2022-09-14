//
//  CustomPage.m
//  Hello World
//
//  Created by Cunknown on 7/28/21.
//

#import "CustomPage.h"

@interface CustomPage ()
@property (weak, nonatomic) IBOutlet UILabel *TxtLabel;
@property (strong, nonatomic) IBOutlet UIView *view;

@end

@implementation CustomPage

@synthesize delegate = _delegate;

- (IBAction)ChangeTxt:(id)sender {
    _TxtLabel.text = @"Hello World";
}

- (IBAction)purple:(id)sender {
    self.view.backgroundColor = [UIColor purpleColor];
}

- (IBAction)blue:(id)sender {
    self.view.backgroundColor = [UIColor blueColor];
}

- (IBAction)green:(id)sender {
    self.view.backgroundColor = [UIColor greenColor];
}

- (IBAction)yellow:(id)sender {
    self.view.backgroundColor = [UIColor yellowColor];
}

- (IBAction)orange:(id)sender {
    self.view.backgroundColor = [UIColor orangeColor];
}

- (IBAction)red:(id)sender {
    self.view.backgroundColor = [UIColor redColor];
}

- (IBAction)gray:(id)sender {
    self.view.backgroundColor = [UIColor grayColor];
}



- (IBAction)Alert:(id)sender {
    UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"Hello World" message:@"Do you want the text to change?" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction * yes = [UIAlertAction actionWithTitle:@"Yes" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action){
        self->_TxtLabel.text = @"Welcome to Hello World Application.";
    }];
    
    UIAlertAction * no = [UIAlertAction actionWithTitle:@"No" style:UIAlertActionStyleCancel handler:^(UIAlertAction * action){
        self->_TxtLabel.text = @"Label";
    }];
    
    [alert addAction:yes];
    [alert addAction:no];
    
    [self presentViewController:alert animated:yes completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
