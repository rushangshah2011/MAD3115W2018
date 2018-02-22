//
//  RegisterViewController.swift
//  LoginRegister
//
//  Created by MacStudent on 2018-02-21.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
         return self.citylist.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int,forComponent component: Int
        ) -> String?
    {
        return self.citylist[row]
    }
    
    @IBOutlet weak var txtemail: UITextField!
    
    @IBOutlet weak var citypicker: UIPickerView!
    
    
    @IBOutlet weak var txtpassword: UITextField!
    
    @IBOutlet weak var txtpostalcode: UITextField!
    
   
    @IBOutlet weak var txtcontactnumber: UITextField!
    
    @IBOutlet weak var dateofbirth: UIDatePicker!

    @IBOutlet weak var txtname: UITextField!
    
    
    var citylist: [String] = ["northyork","vancouver","ottawa","toronto"]

    var selectedcityindex: Int = 0
  

  
    

    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.title = "Register"
        
        
        let btnsubmit = UIBarButtonItem(title: "submit", style: .plain, target: self, action: #selector(displayValues))

        self.navigationItem.rightBarButtonItem = btnsubmit
        
    }
    
    @objc private func displayValues(){
        self.selectedcityindex = self.citypicker.selectedRow(inComponent: 0)
        
        let alldata: String = "\(self.txtname.text!) \n \(self.txtcontactnumber.text!) \n \(self.dateofbirth.date) \n \(self.citylist[selectedcityindex]) \n \(self.txtemail.text!) "
        
        let infoalert = UIAlertController(title: "VARIFY", message: alldata, preferredStyle: .alert)
        infoalert.addAction(UIAlertAction(title: "cancel",style: .destructive, handler: nil))
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
        self.citypicker.delegate = self
        self.citypicker.dataSource = self
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
