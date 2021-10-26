//
//  ViewController.swift
//  RGB
//
//  Created by Serhii Lytvynov on 24/10/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        colorView.layer.cornerRadius = 15
        
        redSlider.tintColor = .red
        greenSlider.tintColor = .green
        
        setColor()
        setValueForLabel()
    }
    private func setColor() {
        colorView.backgroundColor = UIColor(red:CGFloat(redSlider.value),
                                            green:CGFloat(greenSlider.value),
                                            blue:CGFloat(blueSlider.value),
                                            alpha: 1)
    }
    private func setValueForLabel() {
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
    }

    @IBAction func rgbSlider() {
        setColor()
        setValueForLabel()
    }
}

