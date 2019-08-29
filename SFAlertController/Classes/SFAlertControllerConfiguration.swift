//
//  SFAlertControllerConfiguration.swift
//  SFAlertController
//
//  Created by 蔡龙君 on 2019/8/30.
//

import UIKit

public struct SFAlertControllerConfiguration {
    /// 内容距离上下左右间距
    var insets: UIEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
    /// 标题颜色
    var titleColor: UIColor = UIColor.black
    /// 标题字体
    var titleFont: UIFont = UIFont.systemFont(ofSize: 17, weight: .medium)
    /// message颜色
    var messageColor: UIColor = UIColor.black
    /// message字体
    var messageFont: UIFont = UIFont.systemFont(ofSize: 13, weight: .regular)
    /// 分割线颜色
    var separatorColor: UIColor = UIColor(red: 0, green: 0, blue: 0.31, alpha: 0.05)
    /// defaultButtonColor
    var defaultButtonColor: UIColor = UIColor(red: 0, green: 0.48, blue: 1, alpha: 1)
    /// cancelButtonColor
    var cancelButtonColor: UIColor = UIColor(red: 0, green: 0.48, blue: 1, alpha: 1)
    /// destructiveButtonColor
    var destructiveButtonColor: UIColor = UIColor(red: 1, green: 0.23, blue: 0.19, alpha: 1)
    /// 子控件间距
    var subviewSpacing: CGFloat = 10
    
    init(insets: UIEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8),
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
