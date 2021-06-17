//
//  ViewController.swift
//  Even-Odd
//
//  Created by MacBook Pro on 16/06/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(myButton)
    }
    private let myButton:UIButton = {
        let button = UIButton()
        button.setTitle("Even / Odd", for: .normal)
        button.addTarget(self, action: #selector(handleButtonClick), for: .touchUpInside)
        button.backgroundColor = .systemGreen
        button.layer.cornerRadius = 6
        return button
    }()
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        myButton.frame = CGRect(x: 40, y : 100, width: 200 ,height: 70)
        	
    }
    @objc func handleButtonClick(){
        print("clicked..")
        
        let vc = ViewControllerVC()
        navigationController?.pushViewController(vc, animated: true)
        
    }
}

