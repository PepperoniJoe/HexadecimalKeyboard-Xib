//
//  ViewController.swift
//  HexadecimalKeyboard-Xib
//
//  Created by Marcy Vernon on 8/18/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var hexField: [UITextField]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _ = hexField.map { createKeyboard($0)}
    }
    
    
    func createKeyboard(_ textField: UITextField) {
        textField.backgroundColor = .systemGroupedBackground
        textField.clearButtonMode = .whileEditing
        textField.inputView = Keyboard(target: textField)
    }
    
    
    @IBAction func clickTextField(_ sender: UITextField) {
        sender.reloadInputViews()
    }
    
} // end of View Controller
    
