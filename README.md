
StyledTableViewCell for iOS
=================

<img width=150 src="https://github.com/honcheng/StyledTableViewCell-for-iOS/raw/master/Screenshots/cyan-dashes.png"/>
<img width=150 src="https://github.com/honcheng/StyledTableViewCell-for-iOS/raw/master/Screenshots/cyan-dottedlines.png"/>
<img width=150 src="https://github.com/honcheng/StyledTableViewCell-for-iOS/raw/master/Screenshots/purple.png"/>
<img width=150 src="https://github.com/honcheng/StyledTableViewCell-for-iOS/raw/master/Screenshots/2colors.png"/>

<img width=150 src="https://github.com/honcheng/StyledTableViewCell-for-iOS/raw/master/Screenshots/3colors.png"/>
<img width=150 src="https://github.com/honcheng/StyledTableViewCell-for-iOS/raw/master/Screenshots/gradient-horizontal.png"/>
<img width=150 src="https://github.com/honcheng/StyledTableViewCell-for-iOS/raw/master/Screenshots/gradient-diagonal1.png"/>
<img width=150 src="https://github.com/honcheng/StyledTableViewCell-for-iOS/raw/master/Screenshots/gradient-diagonal2.png"/>

Customize table view cell border and highlight colors. 

Features
-------

* Custom highlight colors for table view cells
* Highlights supports gradient of multiple colors and directions

Usage
-----

1) Subclass StyledTableViewCell

2) Set UITableView separator to none to hide the default separator

    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];

3) Use setDashWidth:dashGap:dashStroke: to configure custom cell separators

e.g. dashes for separators

    [self setDashWidth:5 dashGap:3 dashStroke:1];

<img width=250 src="https://github.com/honcheng/StyledTableViewCell-for-iOS/raw/master/Screenshots/cyan-dashes.png"/>

e.g. dotted-lines for separators

    [self setDashWidth:1 dashGap:3 dashStroke:1];

4) Set UITableView separator color to set the custom separator color

    [self.tableView setSeparatorColor:[UIColor colorWithWhite:0.7 alpha:1]];

<img width=250 src="https://github.com/honcheng/StyledTableViewCell-for-iOS/raw/master/Screenshots/cyan-dottedlines.png"/>

5) Use setStyledTableViewCellSelectionStyle: to set background colors of cell when selected, using preset colors

    [self setStyledTableViewCellSelectionStyle:StyledTableViewCellSelectionStylePurple];

<img width=250 src="https://github.com/honcheng/StyledTableViewCell-for-iOS/raw/master/Screenshots/purple.png"/>

6) Use setSelectedBackgroundGradientColors: to set background colors of cell when selected, using custom gradients

e.g. gradient of 2 colors

    NSMutableArray *colors = [NSMutableArray array];
    [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:234/255.0 blue:0 alpha:1] CGColor]];
    [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:174/255.0 blue:0 alpha:1] CGColor]];
    [self setSelectedBackgroundViewGradientColors:colors];

<img width=250 src="https://github.com/honcheng/StyledTableViewCell-for-iOS/raw/master/Screenshots/2colors.png"/>

e.g. gradient of 3 colors

    NSMutableArray *colors = [NSMutableArray array];
    [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:174/255.0 blue:0 alpha:1] CGColor]];
    [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:234/255.0 blue:0 alpha:1] CGColor]];
    [colors addObject:(id)[[UIColor colorWithRed:255/255.0 green:174/255.0 blue:0 alpha:1] CGColor]];
    [self setSelectedBackgroundViewGradientColors:colors];

<img width=250 src="https://github.com/honcheng/StyledTableViewCell-for-iOS/raw/master/Screenshots/3colors.png"/>

7) Use setSelectionGradientDirection: to set direction of gradient when cell is selected

e.g. horizontal gradient

    [self setSelectionGradientDirection:StyledTableViewCellSelectionGradientDirectionHorizontal];

<img width=250 src="https://github.com/honcheng/StyledTableViewCell-for-iOS/raw/master/Screenshots/gradient-horizontal.png"/>

e.g. diagonally from bottom left to top right

    [self setSelectionGradientDirection:StyledTableViewCellSelectionGradientDirectionDiagonalBottomLeftToTopRight];

<img width=250 src="https://github.com/honcheng/StyledTableViewCell-for-iOS/raw/master/Screenshots/gradient-diagonal1.png"/>

e.g. diagonally from top left to bottom right

    [self setSelectionGradientDirection:StyledTableViewCellSelectionGradientDirectionDiagonalTopLeftToBottomRight];

<img width=250 src="https://github.com/honcheng/StyledTableViewCell-for-iOS/raw/master/Screenshots/gradient-diagonal2.png"/>

ARC
---

This project uses ARC. If you are not using ARC in your project, add '-fobjc-arc' as a compiler flag for all the files in this project.

Contact
------

[twitter.com/honcheng](http://twitter.com/honcheng)  
[honcheng.com](http://honcheng.com)
