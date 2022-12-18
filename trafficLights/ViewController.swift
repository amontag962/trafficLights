//
//  ViewController.swift
//  trafficLights
//
//  Created by Александр Горбунов on 18.12.2022.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var redLightView: UIView!
    @IBOutlet var yelowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var changeLightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        redLightView.layer.cornerRadius = 50
        redLightView.alpha = 0.3
        
        yelowLightView.layer.cornerRadius = 50
        yelowLightView.alpha = 0.3
        
        greenLightView.layer.cornerRadius = 50
        greenLightView.alpha = 0.3
    }

    @IBAction func changeLightButtonPressed() {
        
        if redLightView.alpha == 1 {
            redLightView.alpha = 0.3
            yelowLightView.alpha = 1
        } else if yelowLightView.alpha == 1 {
            yelowLightView.alpha = 0.3
            greenLightView.alpha = 1
        } else {
            redLightView.alpha = 1
            greenLightView.alpha = 0.3
        }
        
        changeLightButton.setTitle("NEXT", for: .normal)
    }
    
}

