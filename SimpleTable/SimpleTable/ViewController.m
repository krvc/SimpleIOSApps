//
//  ViewController.m
//  SimpleTable
//
//  Created by Rakesh vidya chandra on 27/02/15.
//  Copyright (c) 2015 Test Organization1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSArray *recipies;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    recipies = [NSArray arrayWithObjects:@"Egg Nuggets", @"Egg biryani", @"Egg Manchuria", @"Egg fry", @"Cream Egg", @"Egg burger", @"Egg pizza", @"Egg Sandwich", @"Cheese Egg", @"Egg Noodles",@"Egg and BBQ", @"Egg Omlette", @"Egg butter", @"Egg 65", @"Egg Tandoori", @"Sliced Egg", @"Fried Egg", nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [recipies count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [recipies objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:@"creme_brelee.jpg"];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
