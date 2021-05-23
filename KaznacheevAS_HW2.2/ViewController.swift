//
//  ViewController.swift
//  KaznacheevAS_HW2.2
//
//  Created by Kaznacheev on 23.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bagckgraundView: UIView!
    
    @IBOutlet weak var textRed: UILabel!
    
    
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.tintColor = UIColor.red
        }
    }
    let brightRed = UIColor(displayP3Red: 1.0 / 255, green: 0.0 / 255, blue: 0.0 / 255, alpha: 1.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bagckgraundView.layer.cornerRadius = 10
        
        slider.minimumValue = 0
        slider.maximumValue = 1
    }

    @IBAction func tugleSlider() {
        textRed.text = "Red \(String(format: "%.1f", slider.value))"
    }
    
    
    
    
}

