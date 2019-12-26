//
//  ViewController.swift
//  calayer
//

import UIKit

class ViewController: UIViewController {
    
    lazy var gradientLayer: CAGradientLayer = {
       return CAGradientLayer()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        gradientLayer.frame = view.bounds
    }
    func setupGradientLayer() {
        view.layer.addSublayer(gradientLayer)
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.green.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        view.layer.addSublayer(gradientLayer)
    }

}

