// View Controller BMI Calculator
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        heightSlider.value = 1.50
        weightSlider.value = 100
        // Default app screen
    }
    
    // Height Value
    @IBOutlet weak var heightValue: UILabel!
    
    // Height Slider
    @IBOutlet weak var heightSlider: UISlider!
    
    // Weight Slider
    @IBOutlet weak var weightSlider: UISlider!
    
    // Weight Value
    @IBOutlet weak var weightValue: UILabel!
    
    // BMI Inititalization
    var calculatorBMI = CalculateBMI()
    var bmi: String = ""
    
    // Height Slider Functionality
    @IBAction func heightSlider(_ sender: UISlider) {
        let value = String(format: "%.2f", sender.value)
        heightValue.text = ("\(String(value)) cm")
    }
    
    // Weight Slider Functionality
    @IBAction func weightSlider(_ sender: UISlider) {
        let value = Int(sender.value)
        weightValue.text = ("\(String(value)) kg")
    }
    
    // Calculate BMI Button
    @IBAction func calculateBMI(_ sender: UIButton){
        let height = heightSlider.value
        let weight = weightSlider.value
        
        bmi = String(format: "%.1f", calculatorBMI.calculateBMI(height: height, weight: weight))
    
        self.performSegue(withIdentifier: "goToResult", sender: self)
    
    }
    
    // Segue Prepare
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmi = bmi
            destinationVC.advice = calculatorBMI.getAdvice()
            destinationVC.color = calculatorBMI.getColor()
            
        }
    }
}
