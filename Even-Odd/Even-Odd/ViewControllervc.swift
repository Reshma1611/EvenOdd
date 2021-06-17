//
//  ViewControllerVC.swift
//  Even-Odd
//
//  Created by MacBook Pro on 16/06/21.
//

import UIKit

class ViewControllerVC: UIViewController {

    private let myTextField:UITextField = {
        
        let textField = UITextField()
        textField.placeholder = "Enter Number"
        textField.textAlignment = .center
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .systemGray2
        return textField
    }()
    private let myButton:UIButton = {
        
        let button = UIButton()
        button.setTitle("Check", for: .normal)
        button.addTarget(self, action: #selector(checkEvenOdd), for: .touchUpInside)
        button.backgroundColor = .systemGreen
        return button
    }()
    @objc private func checkEvenOdd(){
        
        
        guard let num = Int(myTextField.text!) else{
            return
        }
        let vc = ViewControllerResult()
        if num % 2 == 0 {
            
            vc.result = "Even"
        }
        else {
            vc.result = "Odd"
        }
        
        navigationController?.pushViewController(vc, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(myTextField)
        view.addSubview(myButton)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myTextField.frame =  CGRect(x: 40, y : 100, width: 200 ,height: 70)
        myButton.frame = CGRect(x: 40, y:  200 , width: 200, height:60)
        
    }
 
}
