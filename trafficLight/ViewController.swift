//
//  ViewController.swift
//  trafficLight
//
//  Created by Евгений Ефимов on 24.04.2023.
//

import UIKit

extension UIView {
    func asCircle() {
        self.layer.cornerRadius = self.layer.bounds.width / 2
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var stepBtn: UIButton!
    
    private var radius: CGFloat = 90
    private var state = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.asCircle()
        yellowLight.asCircle()
        greenLight.asCircle()
    }

    @IBAction func stepBtnTapped() {
        stepBtn.setTitle("Next", for: .normal)
        switch state{
        case 0:
            state += 1
            greenLight.alpha = 0.65
            redLight.alpha = 1
            break
        case 1:
            state += 1
            redLight.alpha = 0.65
            yellowLight.alpha = 1
            break
        case 2:
            state = 0
            yellowLight.alpha = 0.65
            greenLight.alpha = 1
            break
        default: print("error, incorrect state")
        }
    }
    
}

