//
//  DropitViewController.m
//  Dropit
//
//  Created by 楊 德忻 on 2014/7/3.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "DropitViewController.h"

@interface DropitViewController ()
@property (weak, nonatomic) IBOutlet UIView *gameView;

@end

@implementation DropitViewController

static const CGSize DROPIT_SIZE = {40, 40};
- (IBAction)tap:(UITapGestureRecognizer *)sender {
    
    [self drop];
}

- (void)drop {
    CGRect frame;
    frame.origin = CGPointZero;
    frame.size = DROPIT_SIZE;
    int x = (arc4random() % (int)self.gameView.frame.size.width) /DROPIT_SIZE.width;
    frame.origin.x = x * DROPIT_SIZE.width;
    
    UIView *dropView = [[UIView alloc] initWithFrame:frame];
    dropView.backgroundColor = [self randomColor];
    [self.gameView addSubview:dropView];
    
}

- (UIColor *)randomColor {
    switch (arc4random() % 5) {
        case 0:
            return [UIColor redColor];
            break;
            
        case 1:
            return [UIColor greenColor];
            break;
            
        case 2:
            return [UIColor orangeColor];
            break;
            
        case 3:
            return [UIColor purpleColor];
            break;
            
        case 4:
            return [UIColor blueColor];
            break;
            
        default:
            break;
    }
    return [UIColor blackColor];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
