//
//  ViewController.swift
//  Guess-Number
//
//  Created by Hao Ding on 2018/7/28.
//  Copyright © 2018年 Hao Ding. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let randomNumber:Int = Int(arc4random() % 1000) + 1
    var index = 9
    
    @IBOutlet weak var s: UITextField!
    
    @IBOutlet weak var compare: UISegmentedControl!
    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var answer: UILabel!
    
    
    
    @IBAction func ask(_ sender: Any) {
        if isPurnInt(string: number.text!)
        {
            
            var num = (number.text! as NSString).intValue
            var cp = compare.selectedSegmentIndex
            if index != 0{
                if cp == 0{
                    if num > randomNumber {
                        answer.text = "Yes"
                        index = index-1
                        print("\(num) > \(randomNumber)")
                    }
                    else if num < randomNumber{
                        answer.text = "No"
                        index = index-1
                        print("\(num) < \(randomNumber)")
                    }
                    else{
                        s.text = "You Win!"
                    }
                }
                else
                {
                    if num < randomNumber {
                        index = index-1
                        answer.text = "Yes"
                        print("\(num) > \(randomNumber)")
                    }
                    else if num > randomNumber{
                        index = index-1
                        answer.text = "No"
                        print("\(num) > \(randomNumber)")
                    }
                    else{
                        s.text = "You Win!"
                    }
                }
            }
            else
            {
                s.text = "Game Over!"
                
            }
        }
        else{
            return
        }
        
    }
    
    func isPurnInt(string: String) -> Bool {
        
        let scan: Scanner = Scanner(string: string)
        
        var val:Int = 0
        
        return scan.scanInt(&val) && scan.isAtEnd
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

