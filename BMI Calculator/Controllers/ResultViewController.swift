//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Евгений Фирман on 24.04.2021.


import UIKit

class ResultViewController: UIViewController {
   
    @IBOutlet weak var backGround: UIImageView!
    @IBOutlet weak var resultBMI: UILabel!
    @IBOutlet weak var adviceBMI: UILabel!
    var bmi: String = ""
    var advice: String = ""
    var color: UIColor = UIColor.blue
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultBMI.text = bmi
        adviceBMI.text = advice
        backGround.backgroundColor = color

        // Do any additional setup after loading the view.
    }
  
    @IBAction func recalculateBmi(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
