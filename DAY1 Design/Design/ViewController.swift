//
//  ViewController.swift
//  Design
//
//  Created by MacStudent on 2018-02-20.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtemail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var age: UITextField!
    
    @IBOutlet weak var btnlogin: UIButton!
   
    @IBOutlet weak var age1: UITextField!
   
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var addr: UITextField!
    
    @IBOutlet weak var labelforemail: UILabel!
    
    
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    @IBAction func btnloginaction(_ sender: UIButton) {
    
        var email = txtemail.text
        //var age1 = age.text
        var addr = address.text
        labelforemail.text = email
 //   label2.text =
     label3.text = addr
        
        let infoalert = UIAlertController(title: "ALERT", message: "HII", preferredStyle: .actionSheet)
        infoalert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(infoalert, animated: true, completion: nil)
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   

}

