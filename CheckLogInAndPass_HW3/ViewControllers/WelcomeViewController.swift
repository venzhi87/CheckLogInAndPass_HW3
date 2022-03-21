//
//  GreatingViewController.swift
//  CheckLogInAndPass_HW3
//
//  Created by Pavel Kuzovlev on 08.03.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var userNameWelcome: UILabel!
    
    var user: User!
    
    private let primaryColor = UIColor(
        red: 210/255,
        green: 109/255,
        blue: 128/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1
    )
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        userNameWelcome.text = "Welcome, \(user.person.fullName)!"
    }
}


