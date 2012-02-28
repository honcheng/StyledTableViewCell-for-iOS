//
//  StyledTableViewCell.h
//  StyledTableViewCellDemo
//
//  Created by Hon Cheng Muh on 28/2/12.
//  Copyright (c) 2012 honcheng@gmail.com. All rights reserved.
//

#import <UIKit/UIKit.h>

// available selection colors
typedef enum
{
    StyledTableViewCellSelectionStyleDefault = 0,
    StyledTableViewCellSelectionStyleCyan = 1,
    StyledTableViewCellSelectionStyleGreen = 2,
    StyledTableViewCellSelectionStyleYellow = 3,
    StyledTableViewCellSelectionStylePurple = 4,
} StyledTableViewCellSelectionStyle;

// background view
// use to draw separator line
@interface StyledTableViewCellBackgroundView : UIView
@property (nonatomic, strong) UIColor *separatorColor;
@property (nonatomic, assign) int dashWidth, dashGap, dashStroke;
@end

// selected background view
// subclass of background view, set the colors
@interface StyledTableViewCellSelectedBackgroundView : StyledTableViewCellBackgroundView
@property (strong) NSArray *selectedBackgroundGradientColors;
@end

@interface StyledTableViewCell : UITableViewCell

// set the separator line property
@property (nonatomic, assign, setter = setDashWidth:) int dashWidth;
@property (nonatomic, assign, setter = setDashGap:) int dashGap;
@property (nonatomic, assign, setter = setDashStroke:) int dashStroke;
- (void)setDashWidth:(int)dashWidth dashGap:(int)dashGap dashStroke:(int)dashStroke;
- (void)setSeparatorColor:(UIColor*)separatorColor;

// set the selected background color by providing an array of colors
// requires a list of CGColor 
- (void)setSelectedBackgroundViewGradientColors:(NSArray*)colors;

// set the selected background color using style
@property (nonatomic, assign, setter = setStyledTableViewCellSelectionStyle:) StyledTableViewCellSelectionStyle styledTableViewCellSelectionStyle;

@end
