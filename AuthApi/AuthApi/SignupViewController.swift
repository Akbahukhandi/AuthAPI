//
//  SignupViewController.swift
//  AuthApi
//
//  Created by FicodeMacBookAir on 20/02/22.
//

import UIKit

class SignupViewController: UIViewController {

    @IBOutlet weak var UsernameTextfild: UITextField!
    
    
    @IBOutlet weak var passwordtextfield: UITextField!
    @IBOutlet weak var phonenumbertextfield: UITextField!
    @IBOutlet weak var emailtextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

    @IBAction func signupbtn(_ sender: UIButton) {
        guard let fname = self.UsernameTextfild.text else { return }
        guard let email = self.emailtextfield.text else { return }
        guard let password = self.passwordtextfield.text else { return }
        let register = RegisterModal(name: fname, email: email, password: password)
        APIManager.shareInstance.callingRegisterApi(register: register)
        
     
        }
        
    }
    


