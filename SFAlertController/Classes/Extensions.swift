//
//  Extensions.swift
//  SFAlertController
//
//  Created by 花菜 on 2019/8/28.
//  Copyright © 2019 花菜. All rights reserved.
//

import Foundation
public extension SFAlertController {
    /// 显示样式
    enum Style: Int {
        case sheet
        case alert
    }
    
    /// 按钮样式
    enum AlertButton {
        case `default`(String)
        case cancel(String)
        case disabled(String)
        case destructive(String)
        var style: UIAlertAction.Style {
            switch self {
            case .default, .disabled:
                return .default
            case .cancel:
                return .cancel
            case .destructive:
                return .destructive
            }
        }
        
        var title: String {
            switch self {
            case .default(let title):
                return title
            case .cancel(let title):
                return title
            case .disabled(let title):
                return title
            case .destructive(let title):
                return title
            }
        }
        var isDsiabled: Bool {
            switch self {
            case .disabled:
                return true
            default:
                return false
            }
        }
    }
}
