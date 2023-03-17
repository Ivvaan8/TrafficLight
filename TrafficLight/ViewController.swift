//
//  ViewController.swift
//  TrafficLight
//
//  Created by Иван Майоров on 17.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redButtonView: UIView!
    @IBOutlet weak var greenButtonView: UIView!
    @IBOutlet weak var yellowButtonVIew: UIView!
    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        createView(view: redButtonView)
        createView(view: greenButtonView)
        createView(view: yellowButtonVIew)
        setupButton()
        
    }
    
    private func createView(view: UIView) {
        view.layer.cornerRadius = 50
        view.layer.borderWidth = 3
        view.layer.borderColor = UIColor.white.cgColor
        view.alpha = 0.3
    }
    private func setupButton() {
        changeButton.layer.borderColor = UIColor.white.cgColor
        changeButton.layer.borderWidth = 1
    }
    

    @IBAction func changeColor() {
        changeButton.setTitle("NEXT", for: .normal)
        if redButtonView.alpha != 1 && yellowButtonVIew.alpha != 1 {
            redButtonView.alpha = 1
            greenButtonView.alpha = 0.3
        } else if redButtonView.alpha == 1 {
            redButtonView.alpha = 0.3
            yellowButtonVIew.alpha = 1
        } else if yellowButtonVIew.alpha == 1 {
            yellowButtonVIew.alpha = 0.3
            greenButtonView.alpha = 1
        }





        
        

        


        
    }
    
}

