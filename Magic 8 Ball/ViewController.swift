//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Nils Riviere on 06/08/2019.
//  Copyright © 2019 Nils Riviere. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        newBallImage()
    }

    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
    }
   
    func newBallImage () {
        randomBallNumber = Int(arc4random_uniform(4))
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }

}

