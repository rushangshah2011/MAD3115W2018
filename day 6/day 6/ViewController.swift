//
//  ViewController.swift
//  day 6
//
//  Created by MacStudent on 2018-02-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtcarplate: UITextField!
    
    
    @IBOutlet weak var txtcarcolor: UITextField!
    
    @IBAction func btnactionaddnew(_ sender: UIButton) {
    
    self.writePropertyList()
    }
    
    @IBAction func btnactionlistall(_ sender: UIButton) {
        let listsb: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewvc = listsb.instantiateViewController(withIdentifier: "listcars")
        self.present(viewvc, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    func writePropertyList(){
        let mycar = NSMutableDictionary()
        mycar["carplate"] = self.txtcarplate.text
        mycar["carcolor"] = self.txtcarcolor.text
        if let plistpath = Bundle.main.path(forResource  : "Cars", ofType: "plist") {
            
            print("hiii")
            let carsplist = NSMutableArray(contentsOfFile: plistpath)
            carsplist?.add(mycar)
            if (carsplist?.write(toFile: plistpath, atomically: true))! {
                print("carlist : \(String(describing: carsplist))")
            }
        }
        
        else{
            print("unable to locate plist file")
        }
    }
    
    
    
    

}

