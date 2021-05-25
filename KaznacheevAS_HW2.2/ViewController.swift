//
//  ViewController.swift
//  KaznacheevAS_HW2.2
//
//  Created by Kaznacheev on 23.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bagckgraundView: UIView!
    
    @IBOutlet weak var labelRed: UILabel!
    @IBOutlet weak var labelBlue: UILabel!
    @IBOutlet weak var labelGren: UILabel!
    
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    @IBOutlet weak var sliderGren: UISlider!
    
    
    let brightRed = UIColor(displayP3Red: 1.0 / 255, green: 0.0 / 255, blue: 0.0 / 255, alpha: 1.0)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bagckgraundView.layer.cornerRadius = 10
        
        sliderRed.minimumValue = 0
        sliderRed.maximumValue = 1
    }

    
    
    @IBAction func tugleSlider() {
        textLabelValue()
    }
    
    
    func textLabelValue() {
        labelRed.text = "Red \(String(format: "%.2f", sliderRed.value))"
        labelBlue.text = "Blue \(String(format: "%.2f", sliderBlue.value))"
        labelGren.text = "Gren \(String(format: "%.2f", sliderGren.value))"
    }
    
}

