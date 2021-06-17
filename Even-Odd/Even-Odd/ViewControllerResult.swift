//
//  ViewControllerResult.swift
//  Even-Odd
//
//  Created by MacBook Pro on 16/06/21.
//

import UIKit

class ViewControllerResult: UIViewController {
    var result = ""
    
    private let myLabel:UILabel = {
        
        let label = UILabel()
        label.text = ""
        label.textAlignment = .center
        label.backgroundColor = .systemFill
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        	
        view.backgroundColor = .white
        view.addSubview(myLabel)
        myLabel.text = result
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myLabel.frame =  CGRect(x: 40, y : 100, width: 200 ,height: 70)
        
    }
    
}
