//
//  productCellVC.m
//  TownSquares
//
//  Created by Aaron Crawfis on 1/26/16.
//  Copyright © 2016 Aaron Crawfis. All rights reserved.
//

#import "productCellVC.h"
#define IMAGEVIEW_BORDER_LENGTH 5

@implementation productCellVC

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self setup];
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        [self setup];
    }
    return self;
}

-(void) setup
{
    self.imageView = [[UIImageView alloc] initWithFrame:CGRectInset(self.bounds, IMAGEVIEW_BORDER_LENGTH, IMAGEVIEW_BORDER_LENGTH)];
    [self.contentView addSubview:self.imageView];
}

@end
