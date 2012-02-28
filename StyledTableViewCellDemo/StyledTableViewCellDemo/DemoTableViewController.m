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
    if (section==0) return 4;
    else if (section==1) return 2;
    else if (section==2) return 4;
    else if (section==3) return 4;
    else return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section==0)
    {
        if (indexPath.row==0)
        {
            static NSString *CellIdentifier = @"CYAN";
            StyledTableViewCell *cell = (StyledTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
            if (!cell)
            {
                cell = [[StyledTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
                [cell.textLabel setTextColor:[UIColor grayColor]];
                [cell.textLabel setFont:[UIFont boldSystemFontOfSize:14]];
                [cell.textLabel setHighlightedTextColor:[UIColor whiteColor]];
                [cell setDashWidth:1 dashGap:3 dashStroke:1];
                [cell setStyledTableViewCellSelectionStyle:StyledTableViewCellSelectionStyleCyan];
                
            }
            [cell.textLabel setText:@"CYAN"];
            return cell;
        }
        else if (indexPath.row==1)
        {
            static NSString *CellIdentifier = @"GREEN";
            StyledTableViewCell *cell = (StyledTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
            if (!cell)
            {
                cell = [[StyledTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
                [cell.textLabel setTextColor:[UIColor grayColor]];
                [cell.textLabel setFont:[UIFont boldSystemFontOfSize:14]];
                [cell.textLabel setHighlightedTextColor:[UIColor whiteColor]];
                [cell setDashWidth:1 dashGap:3 dashStroke:1];
                [cell setStyledTableViewCellSelectionStyle:StyledTableViewCellSelectionStyleGreen];
                
            }
            [cell.textLabel setText:@"GREEN"];
            return cell;
        }
        else if (indexPath.row==2)
        {
            static NSString *CellIdentifier = @"PURPLE";
            StyledTableViewCell *cell = (StyledTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
            if (!cell)
            {
                cell = [[StyledTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
                [cell.textLabel setTextColor:[UIColor grayColor]];
                [cell.textLabel setFont:[UIFont boldSystemFontOfSize:14]];
                [cell.textLabel setHighlightedTextColor:[UIColor whiteColor]];
                [cell setDashWidth:1 dashGap:3 dashStroke:1];
                [cell setStyledTableViewCellSelectionStyle:StyledTableViewCellSelectionStylePurple];
                
            }
            [cell.textLabel setText:@"PURPLE"];
            return cell;
        }
        else if (indexPath.row==3)
        {
            static NSString *CellIdentifier = @"YELLOW";
            StyledTableViewCell *cell = (StyledTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
            if (!cell)
            {
                cell = [[StyledTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
                [cell.textLabel setTextColor:[UIColor grayColor]];
                [cell.textLabel setFont:[UIFont boldSystemFontOfSize:14]];
                [cell.textLabel setHighlightedTextColor:[UIColor whiteColor]];
                [cell setDashWidth:1 dashGap:3 dashStroke:1];
                [cell setStyledTableViewCellSelectionStyle:StyledTableViewCellSelectionStyleYellow];
                
            }
            [cell.textLabel setText:@"YELLOW"];
            return cell;
        }
    }
    else if (indexPath.section==1)
    {
        
        if (indexPath.row==0)
        {
            static NSString *CellIdentifier = @"CUSTOM2";
            StyledTableViewCell *cell = (StyledTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
            if (!cell)
            {
                cell = [[StyledTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
                [cell.textLabel setTextColor:[UIColor grayColor]];
                [cell.textLabel setFont:[UIFont boldSystemFontOfSize:14]];
                [cell.textLabel setHighlightedTextColor:[UIColor whiteColor]];
                [cell setDashWidth:1 dashGap:3 dashStroke:1];
                
                NSMutableArray *colors = [NSMutableArray array];
                [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:234/255.0 blue:0 alpha:1] CGColor]];
                [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:174/255.0 blue:0 alpha:1] CGColor]];
                [cell setSelectedBackgroundViewGradientColors:colors];
                
            }
            [cell.textLabel setText:@"CUSTOM - 2 colors"];
            return cell;
        }
        else if (indexPath.row==1)
        {
            static NSString *CellIdentifier = @"CUSTOM3";
            StyledTableViewCell *cell = (StyledTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
            if (!cell)
            {
                cell = [[StyledTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
                [cell.textLabel setTextColor:[UIColor grayColor]];
                [cell.textLabel setFont:[UIFont boldSystemFontOfSize:14]];
                [cell.textLabel setHighlightedTextColor:[UIColor whiteColor]];
                [cell setDashWidth:1 dashGap:3 dashStroke:1];
                
                NSMutableArray *colors = [NSMutableArray array];
                [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:174/255.0 blue:0 alpha:1] CGColor]];
                [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:234/255.0 blue:0 alpha:1] CGColor]];
                [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:174/255.0 blue:0 alpha:1] CGColor]];
                [cell setSelectedBackgroundViewGradientColors:colors];
                
            }
            [cell.textLabel setText:@"CUSTOM - 3 colors"];
            return cell;
        }
    }
    else if (indexPath.section==2)
    {
        
        if (indexPath.row==0)
        {
            static NSString *CellIdentifier = @"SOLID_LINE";
            StyledTableViewCell *cell = (StyledTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
            if (!cell)
            {
                cell = [[StyledTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
                [cell.textLabel setTextColor:[UIColor grayColor]];
                [cell.textLabel setFont:[UIFont boldSystemFontOfSize:14]];
                [cell.textLabel setHighlightedTextColor:[UIColor whiteColor]];
                [cell setDashWidth:1 dashGap:3 dashStroke:1];
                [cell setStyledTableViewCellSelectionStyle:StyledTableViewCellSelectionStyleDefault];
                [cell setDashWidth:3 dashGap:0 dashStroke:1];
            }
            [cell.textLabel setText:@"SEPARATOR - SOLID LINE"];
            return cell;
        }
        else if (indexPath.row==1)
        {
            static NSString *CellIdentifier = @"DOTTED_LINE";
            StyledTableViewCell *cell = (StyledTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
            if (!cell)
            {
                cell = [[StyledTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
                [cell.textLabel setTextColor:[UIColor grayColor]];
                [cell.textLabel setFont:[UIFont boldSystemFontOfSize:14]];
                [cell.textLabel setHighlightedTextColor:[UIColor whiteColor]];
                [cell setDashWidth:1 dashGap:3 dashStroke:1];
                [cell setStyledTableViewCellSelectionStyle:StyledTableViewCellSelectionStyleDefault];
                [cell setDashWidth:1 dashGap:3 dashStroke:1];
            }
            [cell.textLabel setText:@"SEPARATOR - DOTTED LINE"];
            return cell;
        }
        else if (indexPath.row>=2)
        {
            static NSString *CellIdentifier = @"DASH";
            StyledTableViewCell *cell = (StyledTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
            if (!cell)
            {
                cell = [[StyledTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
                [cell.textLabel setTextColor:[UIColor grayColor]];
                [cell.textLabel setFont:[UIFont boldSystemFontOfSize:14]];
                [cell.textLabel setHighlightedTextColor:[UIColor whiteColor]];
                [cell setDashWidth:1 dashGap:3 dashStroke:1];
                [cell setStyledTableViewCellSelectionStyle:StyledTableViewCellSelectionStyleDefault];
                [cell setDashWidth:5 dashGap:3 dashStroke:1];
            }
            [cell.textLabel setText:@"SEPARATOR - DASHES"];
            return cell;
        }
    }
    else if (indexPath.section==3)
    {
        NSMutableArray *colors = [NSMutableArray array];
        //[colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:174/255.0 blue:0 alpha:1] CGColor]];
        [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:234/255.0 blue:0 alpha:1] CGColor]];
        [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:174/255.0 blue:0 alpha:1] CGColor]];
        
        if (indexPath.row==0)
        {
            static NSString *CellIdentifier = @"VERTICAL";
            StyledTableViewCell *cell = (StyledTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
            if (!cell)
            {
                cell = [[StyledTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
                [cell.textLabel setTextColor:[UIColor grayColor]];
                [cell.textLabel setFont:[UIFont boldSystemFontOfSize:14]];
                [cell.textLabel setHighlightedTextColor:[UIColor whiteColor]];
                [cell setDashWidth:1 dashGap:3 dashStroke:1];
                [cell setSelectedBackgroundViewGradientColors:colors];
                [cell setSelectionGradientDirection:StyledTableViewCellSelectionGradientDirectionVertical];
            }
            [cell.textLabel setText:@"VERTICAL (DEFAULT)"];
            return cell;
        }
        else if (indexPath.row==1)
        {
            static NSString *CellIdentifier = @"HORIZONTAL";
            StyledTableViewCell *cell = (StyledTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
            if (!cell)
            {
                cell = [[StyledTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
                [cell.textLabel setTextColor:[UIColor grayColor]];
                [cell.textLabel setFont:[UIFont boldSystemFontOfSize:14]];
                [cell.textLabel setHighlightedTextColor:[UIColor whiteColor]];
                [cell setDashWidth:1 dashGap:3 dashStroke:1];
                [cell setSelectedBackgroundViewGradientColors:colors];
                [cell setSelectionGradientDirection:StyledTableViewCellSelectionGradientDirectionHorizontal];
            }
            [cell.textLabel setText:@"HORIZONTAL"];
            return cell;
        }
        else if (indexPath.row==2)
        {
            static NSString *CellIdentifier = @"DIAGONAL1";
            StyledTableViewCell *cell = (StyledTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
            if (!cell)
            {
                cell = [[StyledTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
                [cell.textLabel setTextColor:[UIColor grayColor]];
                [cell.textLabel setFont:[UIFont boldSystemFontOfSize:14]];
                [cell.textLabel setHighlightedTextColor:[UIColor whiteColor]];
                [cell setDashWidth:1 dashGap:3 dashStroke:1];
                [cell setSelectedBackgroundViewGradientColors:colors];
                [cell setSelectionGradientDirection:StyledTableViewCellSelectionGradientDirectionDiagonalTopLeftToBottomRight];
            }
            [cell.textLabel setText:@"DIAGONAL - TOP LEFT TO BOTTOM RIGHT"];
            return cell;
        }
        else if (indexPath.row==3)
        {
            static NSString *CellIdentifier = @"DIAGONAL2";
            StyledTableViewCell *cell = (StyledTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
            if (!cell)
            {
                cell = [[StyledTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
                [cell.textLabel setTextColor:[UIColor grayColor]];
                [cell.textLabel setFont:[UIFont boldSystemFontOfSize:14]];
                [cell.textLabel setHighlightedTextColor:[UIColor whiteColor]];
                [cell setDashWidth:1 dashGap:3 dashStroke:1];
                [cell setSelectedBackgroundViewGradientColors:colors];
                [cell setSelectionGradientDirection:StyledTableViewCellSelectionGradientDirectionDiagonalBottomLeftToTopRight];
            }
            [cell.textLabel setText:@"DIAGONAL - BOTTOM LEFT TO TOP RIGHT"];
            return cell;
        }
    }
    return nil;
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

