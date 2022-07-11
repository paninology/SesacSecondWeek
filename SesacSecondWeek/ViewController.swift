//
//  ViewController.swift
//  SesacSecondWeek
//
//  Created by yongseok lee on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blueView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        blueView.layer.cornerRadius = 20
        //clips to bound VS shadow
        
        
        
    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print("slider v changed")
    }
    
    @IBAction func textFieldValueChanged(_ sender: UITextField) {
        print("textchangeda")
    }
    
}

