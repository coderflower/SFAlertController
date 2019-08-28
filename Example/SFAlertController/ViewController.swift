//
//  ViewController.swift
//  SFAlertController
//
//  Created by 花菜 on 08/28/2019.
//  Copyright (c) 2019 花菜. All rights reserved.
//

import UIKit
import SFAlertController

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.register(UITableViewCell.self, forCellReuseIdentifier: "ViewController")
        }
    }
    let items = [
        [
            RowItem.title(title: "标题",
                          buttons: [.cancel("取消"), .default("确认")]
            ),
            RowItem.title1(title: "标题 + Message",
                           message: "很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长的消息",
                           buttons: [.cancel("取消"), .default("确认"), .destructive("提交")]
            )
        ],
        [RowItem.customView(customView: CustomView(frame: CGRect(x: 0, y: 0, width: 100, height: 100)),
                            autoLayout: false),
         RowItem.customView(customView: AutoLayoutView(),
                            autoLayout: true)
        ],
        [RowItem.customView1(title: "CustomView + message + 无按钮",
                             message: "很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长的消息",
                             customView: AutoLayoutView(),
                             buttons: []),
         RowItem.customView1(title: "CustomView + message + 有按钮",
                             message: "很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长的消息",
                             customView: CustomView(frame: CGRect(x: 0, y: 0, width: 200, height: 100)),
                             buttons: [.cancel("取消"),
                                       .default("确认"),.default("确认"),.default("确认"),.default("确认"),.default("确认"),.default("确认"),.default("确认"),.default("确认")])
        ]
    ]
    enum RowItem: CustomStringConvertible {
        case title(title: String, buttons: [SFAlertController.AlertButton])
        case title1(title: String, message: String , buttons: [SFAlertController.AlertButton])
        case customView(customView: UIView, autoLayout: Bool)
        case customView1(title: String, message: String, customView: UIView, buttons: [SFAlertController.AlertButton])
        var description: String {
            switch self {
            case .title:
                return "标题 + 按钮"
            case .title1:
                return "标题 + 消息 + 按钮"
            case .customView(_ , let autoLayout):
                return autoLayout ? "自定布局的view" : "frameView"
            case .customView1(_, _, _, let buttons):
                return buttons.isEmpty ? "标题 + 消息 + 自定义view" : "标题 + 消息 + 自定义view + 按钮等"
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /// 标题 + 按钮
        /// 标题 + 消息
        /// 标题 + 消息 + 按钮
        /// customView, frame , autoLayout
        /// 自定义view + 按钮
        /// 标题 + 消息 + view
        /// 标题 + 消息 + 自定义的View
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    @IBOutlet weak var tipsLabel: UILabel!
    
    var preferredStyle: SFAlertController.Style = .alert
    @IBAction func changeStyleAction(_ sender: UISwitch) {
        tipsLabel.text = sender.isOn ? "alert" : "ActionSheet"
        preferredStyle = sender.isOn ? .alert : .sheet
    }
    
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items[section].count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ViewController", for: indexPath)
        cell.textLabel?.text = items[indexPath.section][indexPath.row].description
        cell.textLabel?.textColor = UIColor.red
        return cell
    }
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "section0: 标题 + 消息"
        case 1:
            return "section1: CustomView"
        case 2:
            return "section2: 标题 + 消息 + CustomView"
        default:
            return nil
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = items[indexPath.section][indexPath.row]
        
        switch item {
        case .title(let title, let buttons):
            showAlert(using: title, buttons: buttons, preferredStyle: preferredStyle)
        case .title1(let title, let message, let buttons):
            showAlert(using: title, message: message, buttons: buttons, preferredStyle: preferredStyle)
        case .customView(let customView, _):
            showAlert(customView: customView, preferredStyle: preferredStyle)
        case .customView1(let title, let message, let customView, let buttons):
            showAlert(using: title, message: message, customView: customView, buttons: buttons, preferredStyle: preferredStyle)
        }
    }
    
    
    func showAlert(using title: String? = nil,
                   message: String? = nil,
                   customView: UIView? = nil,
                   buttons: [SFAlertController.AlertButton] = [],
                   preferredStyle: SFAlertController.Style ) {
        
        SFAlertController.show(in: self,
                               title: title,
                               message: message,
                               customView: customView,
                               buttons: buttons,
                               preferredStyle: preferredStyle) { (index, type) in
                                print(index)
                                print(type?.title ?? "")
        }
    }
}


extension UIColor {
    static var random: UIColor {
        return UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        
    }
}

extension ViewController {
    class CustomView: UIView {
        override init(frame: CGRect) {
            super.init(frame: frame)
            backgroundColor = UIColor.random
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }
}
