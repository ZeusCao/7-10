//
//  ViewController.swift
//  7-10-加法计算器
//
//  Created by Zeus on 2017/7/10.
//  Copyright © 2017年 Zeus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 定义属性
    var numText1: UITextField?
    var numText2 : UITextField?
    var resultLabel :UILabel?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setUpUI()
    }

    func setUpUI() -> (){
        
        // 两个textField
        let tf1 = UITextField(frame: CGRect(x: 20, y: 20, width: 100, height: 30))
        tf1.borderStyle = .roundedRect
        tf1.text = "0"
        view.addSubview(tf1)
        
        
        let tf2 = UITextField(frame: CGRect(x: 140, y: 20, width: 100, height: 30))
        tf2.borderStyle = .roundedRect
        tf2.text = "0"
        view.addSubview(tf2)
        
        // 记录属性
        numText1 = tf1
        numText2 = tf2
        
        
        // 三个label
        let l1 = UILabel(frame: CGRect(x: 120, y: 20, width: 20, height: 30))
        l1.text = "+"
        l1.textAlignment = .center;
        view.addSubview(l1)
        
        // commond + ctrl + e
        let l2 = UILabel(frame: CGRect(x: 240, y: 20, width: 20, height: 30))
        l2.text = "="
        l2.textAlignment = .center;
        view.addSubview(l2)
        
        let l3 = UILabel(frame: CGRect(x: 240, y: 20, width: 60, height: 30))
        l3.text = "0"
        l3.textAlignment = .right;
        view.addSubview(l3)
        
        resultLabel = l3
        
        
        // 一个button
        let btn = UIButton()
        btn.setTitle("计算", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.center  = view.center
        btn.sizeToFit()
        btn.addTarget(self, action: #selector(calc), for: .touchUpInside)
        view.addSubview(btn)
        
    }
    
    
    
    // 计算结果
    func calc() {
        print(#function)
        print("\(numText1?.text) ----  \(numText2?.text)")
        
        // 将文本内容转化为数值
        // 如果文本框内容不是数字，int之后内容为nil
        guard let num1 = Int(numText1?.text ?? "0"),let num2 = Int(numText1?.text ?? "0") else {
            print("必须输入数字才能计算")
            return
        }
        // 处理结果
        resultLabel?.text = "\(num1 + num2)"
    }
    


}

