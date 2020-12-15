//
//  ViewController.swift
//  task1
//
//  Created by 酒井健太郎 on 2020/12/15.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var textField3: UITextField!
    @IBOutlet private weak var textField4: UITextField!
    @IBOutlet private weak var textField5: UITextField!
    
    @IBOutlet private weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 初期値
        label.text = "0"
    }
    
    @IBAction func plus(_ sender: UIButton) {
        let textFields: [UITextField] = [
            textField1,
            textField2,
            textField3,
            textField4,
            textField5
        ]
        
        var result = 0
        
        for textField in textFields {
            // UITextFieldがOptional<String>型のため??演算子が必要
            result += Int(textField.text ?? "") ?? 0
        }
        
        // 出力
        label.text = String(result)
    }
}
