//
//  LoginViewController.swift
//  AuthApi
//
//  Created by FicodeMacBookAir on 20/02/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func loginBtn(_ sender: Any) {
    }
   
    @IBAction func signUpBtn(_ sender: Any) {
        let mainstoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = mainstoryboard.instantiateViewController(withIdentifier: "SignupViewController") as! SignupViewController
        self.navigationController? .pushViewController(vc, animated: true)
    }
    
}
