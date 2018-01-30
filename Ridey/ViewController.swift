//
//  ViewController.swift
//  Ridey
//
//  Created by Alexandra Lazea on 14/01/2018.
//  Copyright © 2018 Medeea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func goToLogIn(_ sender: UIButton) {
        
        performSegue(withIdentifier: "logInSegue", sender: self)
    }
    
    @IBAction func goToSignUp(_ sender: UIButton) {
        performSegue(withIdentifier: "signUpSegue", sender: self)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

