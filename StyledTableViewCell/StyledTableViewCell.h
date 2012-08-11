/**
 * Copyright (c) 2012 Muh Hon Cheng
 * Created by honcheng on 28/2/12.
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

typedef enum
{
    StyledTableViewCellSelectionGradientDirectionVertical = 0,
    StyledTableViewCellSelectionGradientDirectionHorizontal = 1,
    StyledTableViewCellSelectionGradientDirectionDiagonalTopLeftToBottomRight = 2,
    StyledTableViewCellSelectionGradientDirectionDiagonalBottomLeftToTopRight = 3,
} StyledTableViewCellSelectionGradientDirection;

// background view
// use to draw separator line
@interface StyledTableViewCellBackgroundView : UIView
@property (nonatomic, strong) UIColor *separatorColor;
@property (nonatomic, assign) int dashWidth, dashGap, dashStroke;
@end

// selected background view
// subclass of background view, set the colors
@interface StyledTableViewCellSelectedBackgroundView : StyledTableViewCellBackgroundView
@property (nonatomic, strong) NSArray *selectedBackgroundGradientColors;
@property (nonatomic, assign) StyledTableViewCellSelectionGradientDirection gradientDirection;
@end

@interface StyledTableViewCell : UITableViewCell

// set the separator line property
@property (nonatomic, assign) int dashWidth;
@property (nonatomic, assign) int dashGap;
@property (nonatomic, assign) int dashStroke;
- (void)setDashWidth:(int)dashWidth dashGap:(int)dashGap dashStroke:(int)dashStroke;
- (void)setSeparatorColor:(UIColor*)separatorColor;

// set the selected background color by providing an array of colors
// requires a list of CGColor 
- (void)setSelectedBackgroundViewGradientColors:(NSArray*)colors;
// set the selected background color gradient direction
- (void)setSelectionGradientDirection:(StyledTableViewCellSelectionGradientDirection)direction;

// set the selected background color using style
@property (nonatomic, assign, setter = setStyledTableViewCellSelectionStyle:) StyledTableViewCellSelectionStyle styledTableViewCellSelectionStyle;

@end
