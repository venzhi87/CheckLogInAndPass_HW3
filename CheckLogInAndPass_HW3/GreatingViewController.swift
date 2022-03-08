//
//  GreatingViewController.swift
//  CheckLogInAndPass_HW3
//
//  Created by Pavel Kuzovlev on 08.03.2022.
//

import UIKit

class GreatingViewController: UIViewController {

    @IBOutlet var userNameWelcome: UILabel!
    
    var userName: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameWelcome.text = userName
        
    }


}
