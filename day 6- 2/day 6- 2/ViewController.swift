//
//  ViewController.swift
//  day 6- 2
//
//  Created by MacStudent on 2018-02-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var activityindicator: UIActivityIndicatorView!
    @IBOutlet weak var modesegment: UISegmentedControl!
    
    @IBOutlet weak var imgmood: UIImageView!
    
    
    @IBOutlet weak var mystepper: UIStepper!
    
    
    @IBOutlet weak var stepparvalue: UILabel!
    
    
    @IBOutlet weak var myslider: UISlider!
    
    
    @IBOutlet weak var slidervalue: UILabel!
    
    
    
    @IBOutlet weak var myprogressview: UIProgressView!
    
    
    
    @IBOutlet weak var progressvalue: UILabel!
    
    
    
    
    @IBAction func btnstart(_ sender: UIButton) {
     activityindicator.startAnimating()
    }
    
    
    @IBAction func btnstop(_ sender: UIButton) {
    activityindicator.stopAnimating()
        
    }
  
    var moodimages: [UIImage] = [UIImage(named: "11.jpg")!,UIImage(named: "2.jpg")!, UIImage(named: " 3.jpg")!]
    
    @IBAction func segmentchange(_ sender: UISegmentedControl) {
        print("selected: \(modesegment.selectedSegmentIndex)")
        
        imgmood.image = moodimages[modesegment.selectedSegmentIndex]
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

