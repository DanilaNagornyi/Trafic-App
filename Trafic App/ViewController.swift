//
//  ViewController.swift
//  Trafic App
//
//  Created by Danila Nagornyi on 22.04.2020.
//  Copyright © 2020 Danila Nagornyi. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    enum CurrentLight {
        case red, yellow, green
    }
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var nextColorButton: UIButton!
    
    private var currentLight = CurrentLight.red
    
    private let light: CGFloat = 1
    private let dark: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextColorButton.layer.cornerRadius = 15
        nextColorButton.setTitle("Go!", for: .normal)
        
        redLight.alpha = dark
        yellowLight.alpha = dark
        greenLight.alpha = dark
    }
    
    override func viewDidLayoutSubviews() {
        
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        
    }
    

    @IBAction func clickNextColor() {
        
        nextColorButton.setTitle("Next Light", for: .normal)
        
        switch currentLight {
        case .red:
            greenLight.alpha = dark
            redLight.alpha = light
            currentLight = .yellow
        case .yellow:
            redLight.alpha = dark
            yellowLight.alpha = light
            currentLight = .green
        case .green:
            yellowLight.alpha = dark
            greenLight.alpha = light
            currentLight = .red
        }
    }
    
}

