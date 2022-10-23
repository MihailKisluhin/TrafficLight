//
//  ViewController.swift
//  TrafficLight
//
//  Created by Kisluhin Mihail on 23.10.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainButton: UIButton!
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mainButton.layer.cornerRadius = 15
        
        redView.layer.cornerRadius = 75
        redView.layer.opacity = 0.3
        
        yellowView.layer.cornerRadius = 75
        yellowView.layer.opacity = 0.3
        
        greenView.layer.cornerRadius = 75
        greenView.layer.opacity = 0.3
    }

    @IBAction func mainButtonTapped() {
        
        if redView.layer.opacity == 1 {
            redView.layer.opacity = 0.3
            yellowView.layer.opacity = 1
        } else if yellowView.layer.opacity == 1 {
            yellowView.layer.opacity = 0.3
            greenView.layer.opacity = 1
        } else if greenView.layer.opacity == 1 {
            greenView.layer.opacity = 0.3
            redView.layer.opacity = 1
        } else {
            redView.layer.opacity = 1
            mainButton.setTitle("RESET", for: .normal)
            }
    }
    
}

