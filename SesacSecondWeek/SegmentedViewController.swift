//
//  SegmentedViewController.swift
//  SesacSecondWeek
//
//  Created by yongseok lee on 2022/07/12.
//

import UIKit

enum MusicType: Int {
    case all = 0
    case korea = 1
    case other = 2
}

class SegmentedViewController: UIViewController {

    @IBOutlet weak var segmentControll: UISegmentedControl!
    
    @IBOutlet weak var resultLAbel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentValueChanged(segmentControll)

        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func segmentValueChanged(_ sender: UISegmentedControl) {
        
        if segmentControll.selectedSegmentIndex == MusicType.all.rawValue {
            
        }else if segmentControll.selectedSegmentIndex == MusicType.korea.rawValue {
            
        }else if segmentControll.selectedSegmentIndex == MusicType.other.rawValue {
            
        }else {
            resultLAbel.text = "error"
        }
        
        
        
        
        if segmentControll.selectedSegmentIndex == 0 {
            resultLAbel.text = "첫번째 세그먼트 선택"
        } else if segmentControll.selectedSegmentIndex == 1 {
            resultLAbel.text = "두번째 세그먼트 선택"
        } else if segmentControll.selectedSegmentIndex == 2 {
            resultLAbel.text = "세번째 세그먼트 선택"
        } else {
            resultLAbel.text = "error"
        }
        
    }
 
}
