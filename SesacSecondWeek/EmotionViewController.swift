//
//  EmotionViewController.swift
//  SesacSecondWeek
//
//  Created by yongseok lee on 2022/07/11.
//

import UIKit

class EmotionViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    @IBOutlet weak var label8: UILabel!
    @IBOutlet weak var label9: UILabel!
    
    @IBOutlet var labels: [UILabel]!
    
    @IBOutlet var emojiButtons: [UIButton]!
  
    var emojiDict = ["label1": 0,"label2": 0, "label3": 0, "label4": 0, "label5": 0, "label6": 0, "label7": 0, "label8": 0, "label9": 0 ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelSetting()
        labelUpdate()
        buttonsSetting()
        
    }
    
    
    
    @IBAction func emojiPressed(_ sender: UIButton) {
//        if sender == emojiButtons[1] {
//            print("button1 press")
//        }
        emojiDict[sender.currentTitle!]! += 1
        print(sender.currentTitle!,emojiDict)
        labelUpdate()
    }
    
    func labelSetting() {
        for n in 0...8 {
            labels[n].textColor = .black
            
        }
        
    }
    func buttonsSetting() {
        for n in 0...8 {
            emojiButtons[n].setTitle("label\(n+1)", for: .normal)
        }
    }
    func labelUpdate() {
        
        label1.text = "기쁨 \(emojiDict["label1"]!) "
        label2.text = "더기쁨 \(emojiDict["label2"]!)"
        label3.text = "사랑 \(emojiDict["label3"]!)"
        label4.text = "화남 \(emojiDict["label4"]!)"
        label5.text = "무난 \(emojiDict["label5"]!)"
        label6.text = "심심 \(emojiDict["label6"]!)"
        label7.text = "긴장 \(emojiDict["label7"]!)"
        label8.text = "별루 \(emojiDict["label8"]!)"
        label9.text = "슬픔 \(emojiDict["label9"]!)"
        
    }

}
