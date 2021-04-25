//
//  CalculateBMI.swift
//  BMI Calculator
//
//  Created by Евгений Фирман on 25.04.2021.


import UIKit

struct CalculateBMI {
    
    var bmi: Float?
    var structBMI: BMI?

    mutating func calculateBMI( height: Float, weight: Float) -> Float {
        bmi = weight/(height * height)
        if bmi! < 18.5 {
            structBMI = BMI(score: bmi!, advice: "Eat more food!", color: UIColor.systemBlue)
        } else if bmi! < 24.9 {
            structBMI = BMI(score: bmi!, advice: "You are in good shape!", color: UIColor.systemGreen)
        } else {
            structBMI = BMI(score: bmi!, advice: "You are overweight, eat less!", color: UIColor.systemRed)
        }
        return bmi!
    }
    func getAdvice() -> String {
        return structBMI!.advice
    }
    func getColor() -> UIColor {
        return structBMI!.color
    }
}
