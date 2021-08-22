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

        reset()
    }
    
    @IBAction func judgementButton(_ sender: UIButton) {
        
        let sliderValue = Int(slider.value)
        if questionValue == sliderValue {
            showAlert(message:"あたり!\nあなたの値:\(sliderValue)")
        } else {
            showAlert(message:"はずれ!\nあなたの値:\(sliderValue)")
        }

        reset()
    }
    
    func showAlert(message:String){
        let alert = UIAlertController(title: "結果", message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "再挑戦", style: .default, handler: nil)
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
        
    }

    private func reset() {
        questionValue = Int.random(in: 1...100)
        questionValueLabel.text = String(questionValue)
        slider.value = 50
    }
}

