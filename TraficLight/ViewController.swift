//
//  ViewController.swift
//  TraficLight
//
//  Created by Никита Курюмов on 21.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    
    
    @IBOutlet var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.layer.cornerRadius = 90
        yellowView.layer.cornerRadius = 90
        greenView.layer.cornerRadius = 90
        
        redView.alpha = 0.50
        yellowView.alpha = 0.50
        greenView.alpha = 0.50
        
        changeButton.configuration = setupButton(with: "START")
    
    }

    @IBAction func changeButtonTapped() {
        changeButton.configuration = setupButton(with: "NEXT")
    }
    
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        buttonConfiguration.title = title
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.cornerStyle = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        
        return buttonConfiguration
    }
    
}

