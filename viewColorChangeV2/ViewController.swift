//
//  ViewController.swift
//  viewColorChangeV2
//
//  Created by CoCo on 02.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var myView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redLabelSliderPosition: UILabel!
    @IBOutlet var greenLabelSliderPosition: UILabel!
    @IBOutlet var blueLabelSliderPosition: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redTextField: UITextField!
    
    var redColor: Float = 0.0
    var greenColor: Float = 0.0
    var blueColor: Float = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup myView
        myView.layer.cornerRadius = 15

        // Setup Slider
        startSetupSliders()
        
        //Setup slider`s Labels positions
        redLabelSliderPosition.text = String(format: "%.2f", redSlider.value)
        greenLabelSliderPosition.text = String(format: "%.2f", greenSlider.value)
        blueLabelSliderPosition.text = String(format: "%.2f", blueSlider.value)
        
        // Setup first color view
        changeViewColor()

    }
  
    @IBAction func redSliderAction() {
        redLabelSliderPosition.text = String(format: "%.2f", redSlider.value)
        changeViewColor()
    }
    
    @IBAction func greenSliderAction() {
        greenLabelSliderPosition.text = String(format: "%.2f", greenSlider.value)
        changeViewColor()
    }
    
    @IBAction func blueSliderAction() {
        blueLabelSliderPosition.text = String(format: "%.2f", blueSlider.value)
        changeViewColor()
    }
    
//    @IBAction func redTextFieldInput(_ sender: Any) {
//        redSlider.value = Float(redTextField.text)
//    }
    
    
    func startSetupSliders () {
        let minimumValue: Float = 0.00
        let maximumValue: Float = 1.00
        let currentValue: Float = 0.50
        
        redSlider.minimumValue = minimumValue
        redSlider.maximumValue = maximumValue
        redSlider.value = currentValue
        
        greenSlider.minimumValue = minimumValue
        greenSlider.maximumValue = maximumValue
        greenSlider.value = currentValue
        
        blueSlider.minimumValue = minimumValue
        blueSlider.maximumValue = maximumValue
        blueSlider.value = currentValue
    }
    
    func changeViewColor() {
        changeColors()
        
        myView.backgroundColor = UIColor(displayP3Red: CGFloat(redColor), green: CGFloat(greenColor), blue: CGFloat(blueColor), alpha: 1.0)
    }
    
    func changeColors() {
        redColor = redSlider.value
        greenColor = greenSlider.value
        blueColor = blueSlider.value
    }
}

