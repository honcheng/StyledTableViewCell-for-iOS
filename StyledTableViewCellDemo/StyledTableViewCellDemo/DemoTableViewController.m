/**
 * Copyright (c) 2012 Muh Hon Cheng
 * Created by honcheng on 3/4/12.
 * 
 * Permission is hereby granted, free of charge, to any person obtaining 
 * a copy of this software and associated documentation files (the 
 * "Software"), to deal in the Software without restriction, including 
 * without limitation the rights to use, copy, modify, merge, publish, 
 * distribute, sublicense, and/or sell copies of the Software, and to 
 * permit persons to whom the Software is furnished to do so, subject 
 * to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be 
 * included in all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT 
 * WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, 
 * INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF 
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR 
 * PURPOSE AND NONINFRINGEMENT. IN NO EVENT 
 * SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE 
 * LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, 
 * TORT OR OTHERWISE, ARISING FROM, OUT OF OR 
 * IN CONNECTION WITH THE SOFTWARE OR 
 * THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 * 
 * @author 		Muh Hon Cheng <honcheng@gmail.com>
 * @copyright	2012	Muh Hon Cheng
 * @version
 * 
 */

#import "DemoTableViewController.h"
#import "StyledTableViewCell.h"

@interface DemoTableViewController ()

@end

@implementation DemoTableViewController
@synthesize demoTableViewStyle = _demoTableViewStyle;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        [self.tableView setRowHeight:60.0];
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
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (_demoTableViewStyle==DemoTableViewStyle_Cyan)
    {
        static NSString *CellIdentifier = @"CYAN";
        StyledTableViewCell *cell = (StyledTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (!cell)
        {
            cell = [[StyledTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
            [cell.textLabel setTextColor:[UIColor grayColor]];
            [cell.textLabel setFont:[UIFont boldSystemFontOfSize:14]];
            [cell.textLabel setHighlightedTextColor:[UIColor whiteColor]];
            [cell setStyledTableViewCellSelectionStyle:StyledTableViewCellSelectionStyleCyan];
            
        }
        [cell.textLabel setText:@"CYAN"];
        return cell;
    }
    else if (_demoTableViewStyle==DemoTableViewStyle_Green)
    {
        static NSString *CellIdentifier = @"GREEN";
        StyledTableViewCell *cell = (StyledTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (!cell)
        {
            cell = [[StyledTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
            [cell.textLabel setTextColor:[UIColor grayColor]];
            [cell.textLabel setFont:[UIFont boldSystemFontOfSize:14]];
            [cell.textLabel setHighlightedTextColor:[UIColor whiteColor]];
            [cell setStyledTableViewCellSelectionStyle:StyledTableViewCellSelectionStyleGreen];
            
        }
        [cell.textLabel setText:@"GREEN"];
        return cell;
    }
    else if (_demoTableViewStyle==DemoTableViewStyle_Purple)
    {
        static NSString *CellIdentifier = @"PURPLE";
        StyledTableViewCell *cell = (StyledTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (!cell)
        {
            cell = [[StyledTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
            [cell.textLabel setTextColor:[UIColor grayColor]];
            [cell.textLabel setFont:[UIFont boldSystemFontOfSize:14]];
            [cell.textLabel setHighlightedTextColor:[UIColor whiteColor]];
            [cell setStyledTableViewCellSelectionStyle:StyledTableViewCellSelectionStylePurple];
            
        }
        [cell.textLabel setText:@"PURPLE"];
        return cell;
    }
    else if (_demoTableViewStyle==DemoTableViewStyle_Yellow)
    {
        static NSString *CellIdentifier = @"YELLOW";
        StyledTableViewCell *cell = (StyledTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (!cell)
        {
            cell = [[StyledTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
            [cell.textLabel setTextColor:[UIColor grayColor]];
            [cell.textLabel setFont:[UIFont boldSystemFontOfSize:14]];
            [cell.textLabel setHighlightedTextColor:[UIColor whiteColor]];
            [cell setStyledTableViewCellSelectionStyle:StyledTableViewCellSelectionStyleYellow];
            
        }
        [cell.textLabel setText:@"YELLOW"];
        return cell;
    }
    else if (_demoTableViewStyle==DemoTableViewStyle_2Colors)
    {
        static NSString *CellIdentifier = @"CUSTOM2";
        StyledTableViewCell *cell = (StyledTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (!cell)
        {
            cell = [[StyledTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
            [cell.textLabel setTextColor:[UIColor grayColor]];
            [cell.textLabel setFont:[UIFont boldSystemFontOfSize:14]];
            [cell.textLabel setHighlightedTextColor:[UIColor whiteColor]];
            
            NSMutableArray *colors = [NSMutableArray array];
            [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:234/255.0 blue:0 alpha:1] CGColor]];
            [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:174/255.0 blue:0 alpha:1] CGColor]];
            [cell setSelectedBackgroundViewGradientColors:colors];
            
        }
        [cell.textLabel setText:@"CUSTOM - 2 colors"];
        return cell;
    }
    else if (_demoTableViewStyle==DemoTableViewStyle_3Colors)
    {
        static NSString *CellIdentifier = @"CUSTOM3";
        StyledTableViewCell *cell = (StyledTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (!cell)
        {
            cell = [[StyledTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
            [cell.textLabel setTextColor:[UIColor grayColor]];
            [cell.textLabel setFont:[UIFont boldSystemFontOfSize:14]];
            [cell.textLabel setHighlightedTextColor:[UIColor whiteColor]];
            
            NSMutableArray *colors = [NSMutableArray array];
            [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:174/255.0 blue:0 alpha:1] CGColor]];
            [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:234/255.0 blue:0 alpha:1] CGColor]];
            [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:174/255.0 blue:0 alpha:1] CGColor]];
            [cell setSelectedBackgroundViewGradientColors:colors];
            
        }
        [cell.textLabel setText:@"CUSTOM - 3 colors"];
        return cell;
    }
    else if (_demoTableViewStyle==DemoTableViewStyle_DottedLine)
    {
        static NSString *CellIdentifier = @"DOTTED_LINE";
        StyledTableViewCell *cell = (StyledTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (!cell)
        {
            cell = [[StyledTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
            [cell.textLabel setTextColor:[UIColor grayColor]];
            [cell.textLabel setFont:[UIFont boldSystemFontOfSize:14]];
            [cell.textLabel setHighlightedTextColor:[UIColor whiteColor]];
            [cell setStyledTableViewCellSelectionStyle:StyledTableViewCellSelectionStyleCyan];
            [cell setDashWidth:1 dashGap:3 dashStroke:1];
        }
        [cell.textLabel setText:@"SEPARATOR - DOTTED LINE"];
        return cell;
    }
    else if (_demoTableViewStyle==DemoTableViewStyle_Dashes)
    {
        static NSString *CellIdentifier = @"DASH";
        StyledTableViewCell *cell = (StyledTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (!cell)
        {
            cell = [[StyledTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
            [cell.textLabel setTextColor:[UIColor grayColor]];
            [cell.textLabel setFont:[UIFont boldSystemFontOfSize:14]];
            [cell.textLabel setHighlightedTextColor:[UIColor whiteColor]];
            [cell setStyledTableViewCellSelectionStyle:StyledTableViewCellSelectionStyleCyan];
            [cell setDashWidth:5 dashGap:3 dashStroke:1];
        }
        [cell.textLabel setText:@"SEPARATOR - DASHES"];
        return cell;
    }
    else if (_demoTableViewStyle==DemoTableViewStyle_GradientVertical)
    {
        NSMutableArray *colors = [NSMutableArray array];
        //[colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:174/255.0 blue:0 alpha:1] CGColor]];
        [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:234/255.0 blue:0 alpha:1] CGColor]];
        [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:174/255.0 blue:0 alpha:1] CGColor]];
        
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
    else if (_demoTableViewStyle==DemoTableViewStyle_GradientHorizontal)
    {
        NSMutableArray *colors = [NSMutableArray array];
        //[colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:174/255.0 blue:0 alpha:1] CGColor]];
        [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:234/255.0 blue:0 alpha:1] CGColor]];
        [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:174/255.0 blue:0 alpha:1] CGColor]];
        
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
    else if (_demoTableViewStyle==DemoTableViewStyle_GradientDiagonalTopLeftToBottomRight)
    {
        NSMutableArray *colors = [NSMutableArray array];
        //[colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:174/255.0 blue:0 alpha:1] CGColor]];
        [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:234/255.0 blue:0 alpha:1] CGColor]];
        [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:174/255.0 blue:0 alpha:1] CGColor]];
        
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
    else if (_demoTableViewStyle==DemoTableViewStyle_GradientDiagonalBottomLeftToTopRight)
    {
        NSMutableArray *colors = [NSMutableArray array];
        //[colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:174/255.0 blue:0 alpha:1] CGColor]];
        [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:234/255.0 blue:0 alpha:1] CGColor]];
        [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:174/255.0 blue:0 alpha:1] CGColor]];
        
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
    else return nil;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //[tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end

