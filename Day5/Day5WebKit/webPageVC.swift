//
//  webPageVC.swift
//
//
//  Created by Jigisha Patel on 2018-02-25.
//  Copyright © 2018 JK. All rights reserved.
//

import UIKit
import WebKit

class webPageVC: UIViewController {
    
    @IBOutlet var myWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        loadWebPage()
        loadManualPage()

        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadWebPage(){
        let url = URL (string: "https://www.google.com");
        let requestObj = URLRequest(url: url!);
        myWebView.load(requestObj);
        
    }
    
    func loadManualPage(){
        let localfilePath = Bundle.main.url(forResource: "Pizza", withExtension: "html");
        let myRequest = URLRequest(url: localfilePath!);
        myWebView.load(myRequest);
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
