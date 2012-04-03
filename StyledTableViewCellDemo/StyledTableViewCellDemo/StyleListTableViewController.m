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

#import "StyleListTableViewController.h"
#import "DemoTableViewController.h"

@interface StyleListTableViewController ()

@end

@implementation StyleListTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        [self setTitle:@"StyledTableViewCell Demo"];
        [self.tableView setRowHeight:60.0];
    }
    return self;
}

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
    else if (section==2) return 2;
    else if (section==3) return 4;
    else return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"UITableViewCell";
    UITableViewCell *cell = (UITableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];  
        [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
        [cell.textLabel setFont:[UIFont boldSystemFontOfSize:14]];
    }
    
    if (indexPath.section==0)
    {
        if (indexPath.row==0)
        {
            [cell.textLabel setText:@"CYAN"];
        }
        else if (indexPath.row==1)
        {
            [cell.textLabel setText:@"GREEN"];
        }
        else if (indexPath.row==2)
        {
            [cell.textLabel setText:@"PURPLE"];
        }
        else if (indexPath.row==3)
        {
            [cell.textLabel setText:@"YELLOW"];
        }
    }
    else if (indexPath.section==1)
    {
        if (indexPath.row==0)
        {
            [cell.textLabel setText:@"CUSTOM - 2 colors"];
        }
        else if (indexPath.row==1)
        {
            [cell.textLabel setText:@"CUSTOM - 3 colors"];
        }
    }
    else if (indexPath.section==2)
    {
        if (indexPath.row==0)
        {
            [cell.textLabel setText:@"SEPARATOR - DOTTED LINE"];
        }
        else if (indexPath.row>=1)
        {
            [cell.textLabel setText:@"SEPARATOR - DASHES"];
        }
    }
    else if (indexPath.section==3)
    {
        if (indexPath.row==0)
        {
            [cell.textLabel setText:@"VERTICAL (DEFAULT)"];
        }
        else if (indexPath.row==1)
        {
            [cell.textLabel setText:@"HORIZONTAL"];
        }
        else if (indexPath.row==2)
        {
            [cell.textLabel setText:@"DIAGONAL - TOP LEFT TO BOTTOM RIGHT"];
        }
        else if (indexPath.row==3)
        {
            [cell.textLabel setText:@"DIAGONAL - BOTTOM LEFT TO TOP RIGHT"];
        }
    }
    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DemoTableViewController *demo = [[DemoTableViewController alloc] initWithStyle:UITableViewStylePlain];
    
    if (indexPath.section==0)
    {
        if (indexPath.row==0)
        {
            [demo setDemoTableViewStyle:DemoTableViewStyle_Cyan];
        }
        else if (indexPath.row==1)
        {
            [demo setDemoTableViewStyle:DemoTableViewStyle_Green];
        }
        else if (indexPath.row==2)
        {
            [demo setDemoTableViewStyle:DemoTableViewStyle_Purple];
        }
        else if (indexPath.row==3)
        {
            [demo setDemoTableViewStyle:DemoTableViewStyle_Yellow];
        }
    }
    else if (indexPath.section==1)
    {
        if (indexPath.row==0)
        {
            [demo setDemoTableViewStyle:DemoTableViewStyle_2Colors];
        }
        else if (indexPath.row==1)
        {
            [demo setDemoTableViewStyle:DemoTableViewStyle_3Colors];
        }
    }
    else if (indexPath.section==2)
    {
        if (indexPath.row==0)
        {
            [demo setDemoTableViewStyle:DemoTableViewStyle_DottedLine];
        }
        else if (indexPath.row==1)
        {
            [demo setDemoTableViewStyle:DemoTableViewStyle_Dashes];
        }
    }
    else if (indexPath.section==3)
    {
        if (indexPath.row==0)
        {
            [demo setDemoTableViewStyle:DemoTableViewStyle_GradientVertical];
        }
        else if (indexPath.row==1)
        {
            [demo setDemoTableViewStyle:DemoTableViewStyle_GradientHorizontal];
        }
        else if (indexPath.row==2)
        {
            [demo setDemoTableViewStyle:DemoTableViewStyle_GradientDiagonalTopLeftToBottomRight];
        }
        else if (indexPath.row==3)
        {
            [demo setDemoTableViewStyle:DemoTableViewStyle_GradientDiagonalBottomLeftToTopRight];
        }
    }
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    [demo setTitle:[cell textLabel].text];
    
    [self.navigationController pushViewController:demo animated:YES];
}

@end
