//
//  ViewController.swift
//  AnimasyonluButton
//
//  Created by Ömer on 14.01.2026.
//

import UIKit

class ViewController: UIViewController {
    
    var fabdurum: Bool = false

    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button1: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        button1.layer.cornerRadius = button1.frame.size.width/2
        button2.layer.cornerRadius = button2.frame.size.width/2
        button3.layer.cornerRadius = button3.frame.size.width/2
        
        
        self.button2.alpha = 0
        self.button3.alpha = 0
        
        self.button2.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.button2.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        
        
    }

    @IBAction func button1(_ sender: Any) {
        
        UIView.animate(withDuration: 0.5, animations: {
            
            
            if self.fabdurum {
                
                self.button2.alpha = 0
                self.button3.alpha = 0
                
                self.button1.transform = CGAffineTransform(rotationAngle: 0 * .pi/180)
                
                self.button2.transform = CGAffineTransform(rotationAngle: 0.1 * 0.1)
                self.button3.transform = CGAffineTransform(rotationAngle: 0.1 * 0.1)
                
                self.fabdurum = false
                
            }else {
                
                self.button2.alpha = 1
                self.button3.alpha = 1
                
                self.button1.transform = CGAffineTransform(rotationAngle: 45 * .pi/180)
                
                self.button2.transform = CGAffineTransform(rotationAngle: 1.0 * 1.0)
                self.button3.transform = CGAffineTransform(rotationAngle: 1.0 * 1.0)
                
                self.fabdurum = true
            }
            
            
        })
        
        
    }
    
    @IBAction func button2(_ sender: Any) {
    }
    
    @IBAction func button3(_ sender: Any) {
    }
}

