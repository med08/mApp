//
//  logInViewController.swift
//  Ridey
//
//  Created by Alexandra Lazea on 30/01/2018.
//  Copyright © 2018 Medeea. All rights reserved.
//

import UIKit
import FirebaseAuth

class logInViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func logIn(_ sender: UIButton) {
        if let email = usernameField.text, let password = passwordField.text{
            Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
                if error != nil{
                    print(error.debugDescription)
                }
                else {
                    print(user!)
                }
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
