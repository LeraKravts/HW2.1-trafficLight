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
    @IBOutlet weak var button: UIButton!
    
    let faded:CGFloat = 0.3
    let brigth:CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        red.layer.cornerRadius = 127
        yellow.layer.cornerRadius = 127
        green.layer.cornerRadius = 127
        
        
        red.alpha = faded
        yellow.alpha = faded
        green.alpha = faded
    }
 
    @IBAction func buttonStart() {

        switch brigth {
        case red.alpha:
            yellow.alpha = brigth
            green.alpha = faded
            red.alpha = faded
        case yellow.alpha:
            red.alpha = faded
            green.alpha = brigth
            yellow.alpha = faded
        case green.alpha:
            red.alpha = brigth
            green.alpha = faded
            yellow.alpha = faded
            
        default:
            red.alpha = brigth
            button.setTitle("NEXT", for: .normal)
        }
        
//        without switch
        
//        if red.alpha == faded && yellow.alpha == faded && green.alpha == faded {
//            button.setTitle("NEXT", for:.normal)
//            red.alpha = brigth
//    }
//        else if red.alpha == brigth {
//            red.alpha = faded
//            yellow.alpha = brigth
//            button.setTitle("NEXT", for:.normal)
//        }
//
//        else if yellow.alpha == brigth {
//            yellow.alpha = faded
//            green.alpha = brigth
//            button.setTitle("NEXT", for:.normal)
//
//        } else {
//            green.alpha = faded
//            yellow.alpha = faded
//            red.alpha = brigth
//            button.setTitle("NEXT", for:.normal)
//        }
    }
}

