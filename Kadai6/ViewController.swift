//
//  ViewController.swift
//  Kadai6
//
//  Created by 吉田晃崇 on 2021/08/13.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var slider: UISlider!
    @IBOutlet private weak var questionValueLabel: UILabel!
    private var questionValue = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slider.value = slider.maximumValue / 2
        questionValue = Int.random(in: 1...100)
        questionValueLabel.text = String(questionValue)
    }
    
    @IBAction func judgementButton(_ sender: UIButton) {
        
        let num1 = Int(questionValueLabel.text ?? "") ?? 0
        let num2 = Int(slider.value)
        if num1 == num2{
            showAlert(message:"あたり!\nあなたの値:\(num2)")
        }else if num1 != num2{
            showAlert(message:"はずれ!\nあなたの値:\(num2)")
        }
        questionValue = Int.random(in: 1...100)
        questionValueLabel.text = String(questionValue)
        slider.value = slider.maximumValue / 2
    }
    
    func showAlert(message:String){
        let alert = UIAlertController(title: "結果", message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "再挑戦", style: .default, handler: nil)
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
        
    }
    
}

