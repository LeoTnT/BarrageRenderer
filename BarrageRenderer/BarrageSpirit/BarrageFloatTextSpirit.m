// Part of BarrageRenderer. Created by UnAsh.
// Blog: http://blog.exbye.com
// Github: https://github.com/unash/BarrageRenderer

// This code is distributed under the terms and conditions of the MIT license.

// Copyright (c) 2015年 UnAsh.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "BarrageFloatTextSpirit.h"

@implementation BarrageFloatTextSpirit
- (instancetype)init
{
    if (self = [super init]) {
        _bgColor = [UIColor clearColor];
        _textColor = [UIColor blackColor];
        _borderWidth = 0.0f;
        _borderColor = [UIColor clearColor];
        _fontSize = 16.0f;
        _cornerRadius = 0.0f;
    }
    return self;
}

#pragma mark - launch

- (UIView *)bindingView
{
    UILabel * label = [[UILabel alloc]init];
    label.text = self.text;
    label.textColor = self.textColor;
    label.font = [UIFont systemFontOfSize:self.fontSize];
    if (self.cornerRadius > 0) {
        label.layer.cornerRadius = self.cornerRadius;
        label.clipsToBounds = YES;
    }
    label.layer.borderColor = self.borderColor.CGColor;
    label.layer.borderWidth = self.borderWidth;
    label.backgroundColor = self.bgColor;
    return label;
}

@end
