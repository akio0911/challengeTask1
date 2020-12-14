//
//  ViewController.swift
//  task1
//
//  Created by 酒井健太郎 on 2020/12/15.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var textField5: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(type(of: UITextField.self))
        
    }
    
    @IBAction func plus(_ sender: Any) {
        
        // 入力
        // UITextFieldがOptional<String型>のため??演算子が必要
        let num1 = Int(textField1.text ?? "") ?? 0
        let num2 = Int(textField2.text ?? "") ?? 0
        let num3 = Int(textField3.text ?? "") ?? 0
        let num4 = Int(textField4.text ?? "") ?? 0
        let num5 = Int(textField5.text ?? "") ?? 0
        // 処理
        let result = num1 + num2 + num3 + num4 + num5
        // 出力
        print(result)
        label.text = String(result)
    }
    
}

