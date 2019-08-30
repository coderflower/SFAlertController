//
//  SFAlertControllerConfiguration.swift
//  SFAlertController
//
//  Created by 蔡龙君 on 2019/8/30.
//

import UIKit

public class SFAlertControllerConfiguration {
    /// 背景颜色
    public var backgroundColor: UIColor = UIColor.white
    /// 内容距离上下左右间距
    public var insets: UIEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
    /// 标题颜色
    public var titleColor: UIColor = UIColor.black
    /// 标题字体
    public var titleFont: UIFont = UIFont.systemFont(ofSize: 17, weight: .medium)
    /// message颜色
    public var messageColor: UIColor = UIColor.black
    /// message字体
    public var messageFont: UIFont = UIFont.systemFont(ofSize: 13, weight: .regular)
    /// 分割线颜色
    public var separatorColor: UIColor = UIColor(red: 0, green: 0, blue: 0.31, alpha: 0.05)
    /// defaultButtonColor
    public var defaultButtonColor: UIColor = UIColor(red: 0, green: 0.48, blue: 1, alpha: 1)
    /// cancelButtonColor
    public var cancelButtonColor: UIColor = UIColor(red: 0, green: 0.48, blue: 1, alpha: 1)
    /// destructiveButtonColor
    public var destructiveButtonColor: UIColor = UIColor(red: 1, green: 0.23, blue: 0.19, alpha: 1)
    /// 子控件间距
    public var subviewSpacing: CGFloat = 10
    
    public init(backgroundColor: UIColor = UIColor.white,
         insets: UIEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8),
         titleColor: UIColor = UIColor.black,
         titleFont: UIFont = UIFont.systemFont(ofSize: 17, weight: .medium),
         messageColor: UIColor = UIColor.black,
         messageFont: UIFont = UIFont.systemFont(ofSize: 13, weight: .regular),
         separatorColor: UIColor = UIColor(red: 0, green: 0, blue: 0.31, alpha: 0.05),
         defaultButtonColor: UIColor = UIColor(red: 0, green: 0.48, blue: 1, alpha: 1),
         cancelButtonColor: UIColor = UIColor(red: 0, green: 0.48, blue: 1, alpha: 1),
         destructiveButtonColor: UIColor = UIColor(red: 1, green: 0.23, blue: 0.19, alpha: 1),
         subviewSpacing: CGFloat = 10
         ) {
        self.backgroundColor = backgroundColor
        self.insets = insets
        self.titleColor = titleColor
        self.titleFont = titleFont
        self.messageColor = messageColor
        self.messageFont = messageFont
        self.separatorColor = separatorColor
        self.defaultButtonColor = defaultButtonColor
        self.cancelButtonColor = cancelButtonColor
        self.destructiveButtonColor = destructiveButtonColor
        self.subviewSpacing = subviewSpacing
    }
}
