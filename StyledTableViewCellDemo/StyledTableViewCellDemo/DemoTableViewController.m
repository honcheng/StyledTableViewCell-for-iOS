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

- (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section==0) return @"Preset Selection Colors";
    else if (section==1) return @"Custom Selection Colors";
    else if (section==2) return @"Separator Lines";
    else if (section==3) return @"Gradient Directions";
    else return nil;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section==0) return 5;
    else if (section==1) return 2;
    else if (section==2) return 4;
    else if (section==3) return 4;
    else return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"StyledTableViewCell";
    StyledTableViewCell *cell = (StyledTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell)
    {
        cell = [[StyledTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        [cell.textLabel setTextColor:[UIColor grayColor]];
        [cell.textLabel setFont:[UIFont boldSystemFontOfSize:14]];
        [cell.textLabel setHighlightedTextColor:[UIColor whiteColor]];
        
    }
    
    if (indexPath.section==0)
    {
        [cell setDashWidth:1 dashGap:3 dashStroke:1];
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
        else
        {
            [cell.textLabel setText:@"DEFAULT"];
            [cell setStyledTableViewCellSelectionStyle:StyledTableViewCellSelectionStyleDefault];
        }
    }
    else if (indexPath.section==1)
    {
        [cell setDashWidth:1 dashGap:3 dashStroke:1];
        if (indexPath.row==0)
        {
            [cell.textLabel setText:@"CUSTOM - 2 colors"];
            NSMutableArray *colors = [NSMutableArray array];
            [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:234/255.0 blue:0 alpha:1] CGColor]];
            [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:174/255.0 blue:0 alpha:1] CGColor]];
            [cell setSelectedBackgroundViewGradientColors:colors];
        }
        else if (indexPath.row==1)
        {
            [cell.textLabel setText:@"CUSTOM - 3 colors"];
            NSMutableArray *colors = [NSMutableArray array];
            [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:174/255.0 blue:0 alpha:1] CGColor]];
            [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:234/255.0 blue:0 alpha:1] CGColor]];
            [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:174/255.0 blue:0 alpha:1] CGColor]];
            [cell setSelectedBackgroundViewGradientColors:colors];
        }
    }
    else if (indexPath.section==2)
    {
        [cell setStyledTableViewCellSelectionStyle:StyledTableViewCellSelectionStyleCyan];
        if (indexPath.row==0)
        {
            [cell.textLabel setText:@"SEPARATOR - SOLID LINE"];
            [cell setDashWidth:3 dashGap:0 dashStroke:1];
        }
        else if (indexPath.row==1)
        {
            [cell.textLabel setText:@"SEPARATOR - DOTTED LINE"];
            [cell setDashWidth:1 dashGap:3 dashStroke:1];
        }
        else if (indexPath.row==2)
        {
            [cell.textLabel setText:@"SEPARATOR - DASHES"];
            [cell setDashWidth:5 dashGap:3 dashStroke:1];
        }
        else if (indexPath.row==3)
        {
            [cell.textLabel setText:@""];
            [cell setDashWidth:5 dashGap:3 dashStroke:1];
        }
    }
    else if (indexPath.section==3)
    {
        NSMutableArray *colors = [NSMutableArray array];
        [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:234/255.0 blue:0 alpha:1] CGColor]];
        [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:174/255.0 blue:0 alpha:1] CGColor]];
        [cell setSelectedBackgroundViewGradientColors:colors];
        
        if (indexPath.row==0)
        {
            [cell.textLabel setText:@"VERTICAL (DEFAULT)"];
            [cell setSelectionGradientDirection:StyledTableViewCellSelectionGradientDirectionVertical];
        }
        else if (indexPath.row==1)
        {
            [cell.textLabel setText:@"HORIZONTAL"];
            [cell setSelectionGradientDirection:StyledTableViewCellSelectionGradientDirectionHorizontal];
        }
        else if (indexPath.row==2)
        {
            [cell.textLabel setText:@"DIAGONAL - TOP LEFT TO BOTTOM RIGHT"];
            [cell setSelectionGradientDirection:StyledTableViewCellSelectionGradientDirectionDiagonalTopLeftToBottomRight];
        }
        else if (indexPath.row==3)
        {
            [cell.textLabel setText:@"DIAGONAL - BOTTOM LEFT TO TOP RIGHT"];
            [cell setSelectionGradientDirection:StyledTableViewCellSelectionGradientDirectionDiagonalBottomLeftToTopRight];
        }
    }
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end

