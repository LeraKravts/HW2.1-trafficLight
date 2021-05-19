//
//  ViewController.swift
//  HW2.1-trafficLight
//
//  Created by Valeriya on 19.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var red: UIView!
    @IBOutlet weak var yellow: UIView!
    
    @IBOutlet weak var green: UIView!
 
    @IBAction func buttonStart() {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        red.layer.cornerRadius = 127
        yellow.layer.cornerRadius = 127
        green.layer.cornerRadius = 127
        
        red.alpha = 0.3
        yellow.alpha = 0.3
        green.alpha = 0.3
    }
}

