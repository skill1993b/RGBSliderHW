//
//  ViewController.swift
//  RGBSliderHW
//
//  Created by Никита Журавлев on 23.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewOfColors: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueSlider: UILabel!
    
    var viewColor = UIColor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        defineColor()
    }
    
    @IBAction func redSliderValueChanged() {
        redValueLabel.text = String(redSlider.value)
        defineColor()
    }
    
    @IBAction func greenSliderValueChanged() {
        greenValueLabel.text = String(greenSlider.value)
        defineColor()
    }
    
    @IBAction func blueSliderValueChanged() {
        blueValueSlider.text = String(blueSlider.value)
        defineColor()
    }
    
    
    
    func defineColor() {
        viewColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0) 
        viewOfColors.backgroundColor = viewColor
    }
    
    
}

