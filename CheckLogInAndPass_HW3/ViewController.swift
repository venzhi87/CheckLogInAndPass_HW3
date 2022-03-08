//
//  ViewController.swift
//  CheckLogInAndPass_HW3
//
//  Created by Pavel Kuzovlev on 08.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    

    

    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    @IBAction func logInButtonPressed(_ sender: Any) {
        
        let userNameSet = "Pavel"
        let passwordSet = "PASSWORD"
        
        if userNameTextField.text != userNameSet || passwordTextField.text != passwordSet {
            let alertController = UIAlertController(title: "Password Incorrect", message: "Please re-type password", preferredStyle: .alert)
            let action = UIAlertAction(title: "ok", style: .default) { (action) in
            }
            alertController.addAction(action)
            self.present(alertController, animated: true, completion: nil)
            
            
        }
    }
    
    
    @IBAction func ShowUserName(_ sender: Any) {
        let alertController = UIAlertController(title: "Oops!", message: "Your name is Pavel 😘", preferredStyle: .alert)
        let action = UIAlertAction(title: "ok", style: .default) { (action) in
        }
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func ShowPassword(_ sender: Any) {
        let alertController = UIAlertController(title: "Oops!", message: "Your password is PASSWORD 😘", preferredStyle: .alert)
        let action = UIAlertAction(title: "ok", style: .default) { (action) in
        }
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard segue.source is GreatingViewController else { return }
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let nav = segue.destination as? GreatingViewController else { return }
        nav.userName = userNameTextField.text
    }
    


    
}

