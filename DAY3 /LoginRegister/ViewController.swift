//
//  ViewController.swift
//  LoginRegister
//
//  Created by MacStudent on 2018-02-21.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtemail: UITextField!
    
    
    @IBOutlet weak var txtpassword: UITextField!
   
    // ************** REGISTRATION ACTION ****************
    
    @IBAction func btnRegisteraction(_ sender: UIBarButtonItem) {
    
        let regsb: UIStoryboard = UIStoryboard (name: "Main", bundle: nil)
    
        let regvc = regsb.instantiateViewController(withIdentifier: "Registrationscreen")
    navigationController?.pushViewController(regvc, animated: true)
    //self.present(regvc,animated: true, completion:  nil)
    
    
    
    }
    
    // ************** LOGIN ACTION ***********************
    
    @IBAction func btnLoginaction(_ sender: UIBarButtonItem) {
    
        let email = txtemail.text
        let pass = txtpassword.text
        
        if(email == "test" && pass == "test"){
            let infoalert = UIAlertController(title: "LOGINSUCCESSFUL", message: "YOU ARE AUTHENTICATED", preferredStyle: .alert)
            
            infoalert.addAction(UIAlertAction(title: "okay", style: .default, handler: nil))
            self.present(infoalert, animated: true, completion: nil)
        }
        else {
            let infoalert1 = UIAlertController(title: "sorry", message: "YOU ARE not AUTHENTICATED", preferredStyle: .alert)
            infoalert1.addAction(UIAlertAction(title: "okay", style: .default, handler: nil))
            self.present(infoalert1, animated: true, completion: nil)
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

