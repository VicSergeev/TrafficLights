//
//  ViewController.swift
//  TrafficLights
//
//  Created by Vic on 12.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lightRed: UIView!
    @IBOutlet var lightYellow: UIView!
    @IBOutlet var lightGreen: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    var lightsCount = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lightRed.layer.cornerRadius = 50
        lightYellow.layer.cornerRadius = 50
        lightGreen.layer.cornerRadius = 50
        
        lightRed.alpha = 0.3
        lightYellow.alpha = 0.3
        lightGreen.alpha = 0.3
        
        startButton.layer.cornerRadius = 10
    }
    
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
            lightRed.alpha = 1
        } else {
            switch lightsCount {
            case 1:
                lightRed.alpha = 0.3
                lightYellow.alpha = 1
                lightsCount += 1
            case 2:
                lightYellow.alpha = 0.3
                lightGreen.alpha = 1
                lightsCount += 1
            case 3:
                lightGreen.alpha = 0.3
                lightRed.alpha = 1
                lightsCount = 1
            default:
                break
            }
        }
    }
    

}

