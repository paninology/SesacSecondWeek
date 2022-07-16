//
//  EmotionViewController.swift
//  SesacSecondWeek
//
//  Created by yongseok lee on 2022/07/11.
//

import UIKit

enum Emotion: String {
    case slime1 = "기쁨"
    case slime2 = "더기쁨"
    case slime3 = "사랑"
    case slime4 = "화남"
    case slime5 = "무난"
    case slime6 = "심심"
    case slime7 = "긴장"
    case slime8 = "별루"
    case slime9 = "슬픔"
    
}

class EmotionViewController: UIViewController {

   
    @IBOutlet var labels: [UILabel]!
    
    @IBOutlet var emojiButtons: [UIButton]!
  
    var emotionCountArray = [0,0,0,0,0,0,0,0,0]
//    let emotionsArray: [Emotion] = 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelSetting()
        emotionCountDataLoad()
        labelUpdate()
        buttonsSetting()
        print(emotionCountArray)
       

    }
    func buttonImageSetting() {
        
    }
  
    func labelSetting() {
        for n in 0...8 {
            labels[n].textColor = .black
            
        }
        
    }
    func buttonsSetting() {
        for n in 0...8 {
            emojiButtons[n].setTitle("label\(n+1)", for: .normal)
            emojiButtons[n].tag = n
        }
    }
    func labelUpdate() { //Emotion enum 하나씩 넣은 어레이 만들면, 포문으로 가능할듯.
        
        labels[0].text = labelTextSetting(emotion: .slime1, arrayNum: 0)
        labels[1].text = labelTextSetting(emotion: .slime2, arrayNum: 1)
        labels[2].text = labelTextSetting(emotion: .slime3, arrayNum: 2)
        labels[3].text = labelTextSetting(emotion: .slime4, arrayNum: 3)
        labels[4].text = labelTextSetting(emotion: .slime5, arrayNum: 4)
        labels[5].text = labelTextSetting(emotion: .slime6, arrayNum: 5)
        labels[6].text = labelTextSetting(emotion: .slime6, arrayNum: 6)
        labels[7].text = labelTextSetting(emotion: .slime6, arrayNum: 7)
        labels[8].text = labelTextSetting(emotion: .slime6, arrayNum: 8)
        
//        for n in 0...8 {
//            labels[n].text = labelTextSetting(emotion: emotionsArray[n], arrayNum: n)
//        }
        
    }
    func labelTextSetting(emotion: Emotion, arrayNum: Int) -> String {
        return "\(emotion.rawValue) \(emotionCountArray[arrayNum])"
    }
    
    func showAlertController() {
        //1. 흰바탕: UIAlertController
        let alert = UIAlertController(title: "Title", message: nil, preferredStyle: .alert)
        //2. 버튼 handler는 눌렸을때 기능입력
        let ok = UIAlertAction(title: "확인", style: .default, handler: nil)
        let cancel = UIAlertAction(title: "cancel", style: .cancel, handler: nil)
        let web = UIAlertAction(title: "새창", style: .destructive, handler: nil)
        let copy = UIAlertAction(title: "복사", style: .default, handler: nil)
        //3. 1+2
        alert.addAction(copy)
        alert.addAction(web)
        alert.addAction(ok)
        alert.addAction(cancel)
        //4. present   completion은 알랏 팝업시 액션.사용자에게 안보이지만 회사에서 통계내거나 할때 많이 쓰임
        present(alert, animated: true, completion: nil)
    }
    
    func emotionCountDataLoad() {
        for n in 0...(emotionCountArray.count - 1) {
            emotionCountArray[n] = UserDefaults.standard.integer(forKey: "emotionCount\(n)")
            
        }
        print(emotionCountArray)
    }
    
    @IBAction func emojiPressed(_ sender: UIButton) {

        emotionCountArray[sender.tag] += 1
        UserDefaults.standard.set(emotionCountArray[sender.tag], forKey: "emotionCount\(sender.tag)")
        labelUpdate()
     
    }
    
    //강의 내용 tag 붙혀서, 인덱스어레이를 만들어서 .  emotionArray[sender.tag] += 1

}
