//
//  ViewController.swift
//  tests_app
//
//  Created by Pedro  on 9/11/20.
//  Copyright © 2020 ballustra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bottomButton: UIButton!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var effectView: UIVisualEffectView!
    @IBOutlet weak var effectViewContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "Test \nApplication"
        titleLabel.layer.cornerRadius = 4.0
        
        //bottom button
        bottomButton.layer.cornerRadius = 4.0
        
        //effect view
        effectView.layer.cornerRadius = 4.0
        effectView.clipsToBounds = true
        
        //effectViewContainer
        effectViewContainer.layer.cornerRadius = 4.0
        effectViewContainer.layer.shadowColor = UIColor.black.cgColor
        effectViewContainer.layer.shadowRadius = 10
        effectViewContainer.layer.shadowOpacity = 1.0
        effectViewContainer.layer.shadowOffset = CGSize(width: 10.0, height: 10.0)
    }
}
