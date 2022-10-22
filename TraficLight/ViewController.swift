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
    
    var tappCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.layer.cornerRadius = 90
        yellowView.layer.cornerRadius = 90
        greenView.layer.cornerRadius = 90
        changeButton.layer.cornerRadius = 10
        
        redView.alpha = 0.30
        yellowView.alpha = 0.30
        greenView.alpha = 0.30
        
        tappCount = 0
        
        changeButton.configuration = setupButton(with: "START")
       
    }
    
    @IBAction func changeButtonTapped() {
        changeButton.configuration = setupButton(with: "NEXT")
        tappCount += 1
        changeAlpha()
    }
    
   private func changeAlpha() {
       if tappCount == 1 {
            redView.alpha = 1
            greenView.alpha = 0.30
        } else if tappCount == 2 {
            redView.alpha = 0.30
            yellowView.alpha = 1
            greenView.alpha = 0.30
        } else if tappCount == 3 {
            redView.alpha = 0.30
            yellowView.alpha = 0.30
            greenView.alpha = 1
        } else if tappCount > 3 {
            tappCount = 1
            redView.alpha = 1
            greenView.alpha = 0.30
        }
    }
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        buttonConfiguration.title = title
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        
        return buttonConfiguration
    }
}
