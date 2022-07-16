//
//  TransitionSecondViewController.swift
//  SesacSecondWeek
//
//  Created by yongseok lee on 2022/07/15.
//

import UIKit

enum UserDefaultKeys: String {
    case happyEmotion
}

class TransitionSecondViewController: UIViewController {

    @IBOutlet weak var mottoTextView: UITextView!
    
    
    @IBOutlet weak var emotionCountLabel: UILabel!
    
    var emotionCount = 0
    /*
     1.앱 켜면 데이터를 가지고 와서 텍스트뷰에 보여줘야함
     2. 바뀐 데이터를 저장 해주어야 함
     => UserDefault
     
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function,"second")
        
        //가지고 와야 함
        
        if UserDefaults.standard.string(forKey: "nickname") != nil {
            mottoTextView.text = UserDefaults.standard.string(forKey: "nickname")
        } else {
            //date nil이면
            mottoTextView.text = "고래밥"
        }
        print(UserDefaults.standard.string(forKey: "phoneNumber"))
        print(UserDefaults.standard.integer(forKey: "age"))
        print(UserDefaults.standard.bool(forKey: "inapp"))
        
        emotionCountLabel.text = "\( UserDefaults.standard.integer(forKey: "emotionCount"))"
        
        
//        UserDefaults.standard.removeObject(forKey: "emotionCount")// 지우기
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#function,"second")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#function,"second")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#function,"second")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#function,"second")
    }
    
    @IBAction func saveButtonPressed(_ sender: UIButton) {
        
        UserDefaults.standard.set(mottoTextView.text, forKey: "nickname")
        print("저장 되었습니다.",UserDefaults.standard.string(forKey: "nickname"))
    }

    @IBAction func emotionCountButtonPressed(_ sender: UIButton) {
        //기존값 가져오기
        let currentValue =   UserDefaults.standard.integer(forKey: "emotionCount")
        //감정 + 1
        let updateValue = currentValue + 1
     //새로운 갑ㅈㅅ 저장
        UserDefaults.standard.set(updateValue, forKey: "emotionCount")
        //레이블에 새 내용 보여주기
        emotionCountLabel.text = "\( UserDefaults.standard.integer(forKey: "emotionCount"))"
        
        }
    
    

}
