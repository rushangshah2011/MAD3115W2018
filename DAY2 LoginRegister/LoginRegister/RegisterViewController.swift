//
//  RegisterViewController.swift
//  LoginRegister
//
//  Created by MacStudent on 2018-02-21.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.title = "Register"
        
        
        let btnsubmit = UIBarButtonItem(title: "submit", style: .plain, target: self, action: #selector(displayValues))

        self.navigationItem.rightBarButtonItem = btnsubmit
        
    }
    
    @objc private func displayValues(){
        
        let infoalert = UIAlertController(title: "VARIFY", message: "plz varify your details", preferredStyle: .alert)
        
        infoalert.addAction(UIAlertAction(title: "CONFIRM", style: .default, handler: {_ in self.displayWelcomeScreen()}))
        
        self.present(infoalert, animated: true)
 
    }
    func displayWelcomeScreen(){
        let welsb : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let welvc = welsb.instantiateViewController(withIdentifier: "welcomescreen")
        
        navigationController?.pushViewController(welvc, animated: true)
    }
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
