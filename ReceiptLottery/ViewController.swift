//
//  ViewController.swift
//  ReceiptLottery
//
//  Created by 郭景豪 on 2018/10/5.
//  Copyright © 2018 Tank. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    
    @IBOutlet weak var confirmButton: UIButton!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    let numberData = ["特別獎":"73372972","特獎":"22315462","頭獎1":"91903003","頭獎2":"16228722","頭獎3":"03270598","普獎1":"163","普獎2":"983","普獎3":"814"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func confirmButtonAction(_ sender: Any) {
        
        if checkIsEightNumber(text: numberTextField.text) {
            
            resultLabel.text = receiptLottery(text: numberTextField.text!).rawValue
            
        }else {
            resultLabel.text = "請輸入正確數字"
        }
    }
    
    enum Bonus : String {
        case first = "中一千萬"
        case second = "中兩百萬"
        case three = "中二十萬"
        case four = "中四萬"
        case five = "中一萬"
        case six = "中四千"
        case seven = "中一千"
        case eight = "中兩百"
        case none = "沒有中獎"
    }
    
    
    func receiptLottery(text : String) -> Bonus {
        
        let lotteryString = text
        
        if lotteryString == numberData["特別獎"] {
            return .first
        }else if lotteryString == numberData["特獎"]{
            return .second
        }else if lotteryString == numberData["頭獎1"] ||  lotteryString == numberData["頭獎2"] ||  lotteryString == numberData["頭獎3"]{
            return .three
        }else {
            for i in 1...5 {
                let startIndex = lotteryString.index(lotteryString.startIndex, offsetBy: i)
                let reversedNumber = lotteryString[startIndex..<lotteryString.endIndex]
                print(reversedNumber)
                let temp1 = numberData["頭獎1"]![startIndex..<lotteryString.endIndex]
                let temp2 = numberData["頭獎2"]![startIndex..<lotteryString.endIndex]
                let temp3 = numberData["頭獎3"]![startIndex..<lotteryString.endIndex]
                if reversedNumber == temp1 || reversedNumber == temp2 || reversedNumber == temp3 {
                    switch i{
                    case 1:
                        return .four
                    case 2:
                        return .five
                    case 3:
                        return .six
                    case 4:
                        return .seven
                    case 5:
                        return .eight
                    default:
                        break
                    }
                }
            }
            
            let reversedNumber = String(lotteryString.reversed()[0...2])
            let temp1 = String(numberData["普獎1"]!.reversed()[0...2])
            let temp2 = String(numberData["普獎2"]!.reversed()[0...2])
            let temp3 = String(numberData["普獎3"]!.reversed()[0...2])
            if reversedNumber == temp1 || reversedNumber == temp2 || reversedNumber == temp3 {
                return .eight
            }
        }
        
        return .none
    }
    
    func checkIsEightNumber(text:String?) -> Bool {
        
        guard let numberString = text , numberString.count == 8 else {
            return false
        }
        
        //判斷是不是數字
        return CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: numberString))
        
    }
    
}

