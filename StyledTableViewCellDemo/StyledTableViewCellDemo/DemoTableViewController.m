//
//  DemoTableViewController.m
//  StyledTableViewCellDemo
//
//  Created by Hon Cheng Muh on 28/2/12.
//  Copyright (c) 2012 honcheng@gmail.com. All rights reserved.
//

#import "DemoTableViewController.h"
#import "StyledTableViewCell.h"

@interface DemoTableViewController ()

@end

@implementation DemoTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        [self setTitle:@"StyledTableViewCell Demo"];
        [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
        [self.tableView setSeparatorColor:[UIColor colorWithWhite:0.7 alpha:1]];
    }
    return self;
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"StyledTableViewCell";
    StyledTableViewCell *cell = (StyledTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell)
    {
        cell = [[StyledTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        [cell setDashWidth:3 dashGap:1 dashStroke:1];
        
        [cell.textLabel setTextColor:[UIColor darkGrayColor]];
        [cell.textLabel setHighlightedTextColor:[UIColor whiteColor]];
    }
    
    if (indexPath.row==0)
    {
        [cell.textLabel setText:@"CYAN"];
        [cell setStyledTableViewCellSelectionStyle:StyledTableViewCellSelectionStyleCyan];
    }
    else if (indexPath.row==1)
    {
        [cell.textLabel setText:@"GREEN"];
        [cell setStyledTableViewCellSelectionStyle:StyledTableViewCellSelectionStyleGreen];
    }
    else if (indexPath.row==2)
    {
        [cell.textLabel setText:@"YELLOW"];
        [cell setStyledTableViewCellSelectionStyle:StyledTableViewCellSelectionStyleYellow];
    }
    else if (indexPath.row==3)
    {
        [cell.textLabel setText:@"PURPLE"];
        [cell setStyledTableViewCellSelectionStyle:StyledTableViewCellSelectionStylePurple];
    }
    else if (indexPath.row==4)
    {
        [cell.textLabel setText:@"CUSTOM"];
        NSMutableArray *colors = [NSMutableArray array];
        [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:234/255.0 blue:0 alpha:1] CGColor]];
        [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:174/255.0 blue:0 alpha:1] CGColor]];
        [cell setSelectedBackgroundViewGradientColors:colors];
    }
    else
    {
        [cell.textLabel setText:@"DEFAULT"];
        [cell setStyledTableViewCellSelectionStyle:StyledTableViewCellSelectionStyleDefault];
    }
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end

