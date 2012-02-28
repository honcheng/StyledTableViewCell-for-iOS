//
//  StyledTableViewCell.m
//  StyledTableViewCellDemo
//
//  Created by Hon Cheng Muh on 28/2/12.
//  Copyright (c) 2012 honcheng@gmail.com. All rights reserved.
//

#import "StyledTableViewCell.h"
#import <QuartzCore/QuartzCore.h>

@implementation StyledTableViewCellBackgroundView
@synthesize dashWidth = _dashWidth;
@synthesize dashGap = _dashGap;
@synthesize dashStroke = _dashStroke;
@synthesize separatorColor = _separatorColor;

- (BOOL) isOpaque 
{
    return YES;
}

- (id)initWithFrame:(CGRect)frame 
{
    if (self = [super initWithFrame:frame]) 
    {
        [self setBackgroundColor:[UIColor whiteColor]];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    // if no separator color is set, use this
    if (!_separatorColor)
    {
        _separatorColor = [UIColor colorWithRed:190/255.0 green:183/255.0 blue:145/255.0 alpha:1];
    }
    
    CGContextRef c = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(c, [_separatorColor CGColor]);
    CGContextSetLineWidth(c, _dashStroke);
    
    // if gap==0, draw a continuous line
    if (_dashGap>0)
    {
        float dash[2] = { _dashWidth , _dashGap};
        CGContextSetLineDash(c,0,dash,2);
    }
    
    CGContextBeginPath(c);
    CGContextMoveToPoint(c, 0.0f, rect.size.height-_dashStroke/2);
    CGContextAddLineToPoint(c, rect.size.width, rect.size.height-_dashStroke/2);
    CGContextStrokePath(c);
}

@end

@implementation StyledTableViewCellSelectedBackgroundView
@synthesize selectedBackgroundGradientColors = _selectedBackgroundGradientColors;
@synthesize gradientDirection = _gradientDirection;

- (void)drawRect:(CGRect)rect
{
    if (!_selectedBackgroundGradientColors)
    {
        // use this color if no gradient color exists
        _selectedBackgroundGradientColors = [NSArray arrayWithObjects:(id)[[UIColor colorWithWhite:0.9 alpha:1] CGColor],(id)[[UIColor colorWithWhite:0.95 alpha:1] CGColor], nil];
    }
    else if ([_selectedBackgroundGradientColors count]==1)
    {
        // at least 2 colors are required to set gradient
        // if only one color provided, use the same color for both extremes of the gradient
        _selectedBackgroundGradientColors = [NSArray arrayWithObjects:[_selectedBackgroundGradientColors objectAtIndex:0],[_selectedBackgroundGradientColors objectAtIndex:0], nil];
    }
    
    // draw the selected background gradient
    CAGradientLayer *gradient = [CAGradientLayer layer];
    [gradient setFrame:CGRectMake(0,0,self.frame.size.width,self.frame.size.height-self.dashStroke)];
    if (_gradientDirection==StyledTableViewCellSelectionGradientDirectionVertical)
    {
        [gradient setStartPoint:CGPointMake(0, 0)];
        [gradient setEndPoint:CGPointMake(0, 1)];
    }
    else if (_gradientDirection==StyledTableViewCellSelectionGradientDirectionHorizontal)
    {
        [gradient setStartPoint:CGPointMake(0, 0)];
        [gradient setEndPoint:CGPointMake(1, 0)];
    }
    else if (_gradientDirection==StyledTableViewCellSelectionGradientDirectionDiagonalTopLeftToBottomRight)
    {
        [gradient setStartPoint:CGPointMake(0, 0)];
        [gradient setEndPoint:CGPointMake(1, 1)];
    }
    else if (_gradientDirection==StyledTableViewCellSelectionGradientDirectionDiagonalBottomLeftToTopRight)
    {
        [gradient setStartPoint:CGPointMake(0, 1)];
        [gradient setEndPoint:CGPointMake(1, 0)];
    }
    [self.layer insertSublayer:gradient atIndex:0];
    [gradient setColors:_selectedBackgroundGradientColors];
   
    [super drawRect:rect];
}

@end

@implementation StyledTableViewCell
@synthesize dashWidth = _dashWidth;
@synthesize dashGap = _dashGap;
@synthesize dashStroke = _dashStroke;
@synthesize styledTableViewCellSelectionStyle = _styledTableViewCellSelectionStyle;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        // set the background view
        StyledTableViewCellBackgroundView *backgroundView = [[StyledTableViewCellBackgroundView alloc] initWithFrame:CGRectZero];
        [self setBackgroundView:backgroundView];
        
        // set the selected background view
        StyledTableViewCellSelectedBackgroundView *selectedBackgroundView = [[StyledTableViewCellSelectedBackgroundView alloc] initWithFrame:CGRectZero];
        [self setSelectedBackgroundView:selectedBackgroundView];
        
        // clear the background color of text label because text label background overlaps with separator
        [self.textLabel setBackgroundColor:[UIColor clearColor]];

        [self setDashWidth:1 dashGap:0 dashStroke:1];
    }
    return self;
}

// set the selected background color by providing an array of colors
// requires a list of CGColor 
- (void)setSelectedBackgroundViewGradientColors:(NSArray*)colors
{
    [(StyledTableViewCellSelectedBackgroundView*)self.selectedBackgroundView setSelectedBackgroundGradientColors:colors];
}

// set the selected background color using style
- (void)setStyledTableViewCellSelectionStyle:(StyledTableViewCellSelectionStyle)style
{
    _styledTableViewCellSelectionStyle = style;
    
    NSMutableArray *colors = [NSMutableArray array];
    if (_styledTableViewCellSelectionStyle==StyledTableViewCellSelectionStyleCyan)
    {
        [colors addObject:(id)[[UIColor colorWithRed:134/255.0 green:214/255.0 blue:231/255.0 alpha:1] CGColor]];
        [colors addObject:(id)[[UIColor colorWithRed:111/255.0 green:198/255.0 blue:217/255.0 alpha:1] CGColor]];
    }
    else if (_styledTableViewCellSelectionStyle==StyledTableViewCellSelectionStyleGreen)
    {
        [colors addObject:(id)[[UIColor colorWithRed:124/255.0 green:243/255.0 blue:127/255.0 alpha:1] CGColor]];
        [colors addObject:(id)[[UIColor colorWithRed:111/255.0 green:222/255.0 blue:114/255.0 alpha:1] CGColor]];
    }
    else if (_styledTableViewCellSelectionStyle==StyledTableViewCellSelectionStyleYellow)
    {
        [colors addObject:(id)[[UIColor colorWithRed:248/255.0 green:242/255.0 blue:145/255.0 alpha:1] CGColor]];
        [colors addObject:(id)[[UIColor colorWithRed:243/255.0 green:236/255.0 blue:124/255.0 alpha:1] CGColor]];
    }
    else if (_styledTableViewCellSelectionStyle==StyledTableViewCellSelectionStylePurple)
    {
        [colors addObject:(id)[[UIColor colorWithRed:217/255.0 green:143/255.0 blue:230/255.0 alpha:1] CGColor]];
        [colors addObject:(id)[[UIColor colorWithRed:190/255.0 green:110/255.0 blue:204/255.0 alpha:1] CGColor]];
    }
    else
    {
        [colors addObject:(id)[[UIColor colorWithWhite:0.95 alpha:1] CGColor]];
        [colors addObject:(id)[[UIColor colorWithWhite:0.9 alpha:1] CGColor]];
    }
    [self setSelectedBackgroundViewGradientColors:colors];
}

// set the selected background color gradient direction
- (void)setSelectionGradientDirection:(StyledTableViewCellSelectionGradientDirection)direction
{
    [(StyledTableViewCellSelectedBackgroundView*)self.selectedBackgroundView setGradientDirection:direction];
}

// overrides the method that changes the cell separator color
// there is no need to call this method
- (void)setSeparatorColor:(UIColor*)separatorColor
{
    [(StyledTableViewCellSelectedBackgroundView*)self.selectedBackgroundView setSeparatorColor:separatorColor];
    [(StyledTableViewCellBackgroundView*)self.backgroundView setSeparatorColor:separatorColor];
}

// set the separator property including width, gap and stroke width
- (void)setDashWidth:(int)dashWidth dashGap:(int)dashGap dashStroke:(int)dashStroke
{
    [self setDashWidth:dashWidth];
    [self setDashGap:dashGap];
    [self setDashStroke:dashStroke];
}

// set the separator dash gap
// separator is a continuous line if gap is 0
- (void)setDashGap:(int)dashGap
{
    _dashGap = dashGap;
    [(StyledTableViewCellSelectedBackgroundView*)self.selectedBackgroundView setDashGap:_dashGap];
    [(StyledTableViewCellBackgroundView*)self.backgroundView setDashGap:_dashGap];
}

// set the separator stroke width
- (void)setDashStroke:(int)dashStroke
{
    _dashStroke = dashStroke;
    [(StyledTableViewCellSelectedBackgroundView*)self.selectedBackgroundView setDashStroke:_dashStroke];
    [(StyledTableViewCellBackgroundView*)self.backgroundView setDashStroke:_dashStroke];
}

// set the separator dash width
- (void)setDashWidth:(int)dashWidth
{
    _dashWidth = dashWidth;
    [(StyledTableViewCellSelectedBackgroundView*)self.selectedBackgroundView setDashWidth:_dashWidth];
    [(StyledTableViewCellBackgroundView*)self.backgroundView setDashWidth:_dashWidth];
}

@end
