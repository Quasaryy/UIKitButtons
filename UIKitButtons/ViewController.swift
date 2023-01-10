//
//  ViewController.swift
//  UIKitButtons
//
//  Created by Yury on 10.01.23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textLablel: UILabel!
    @IBOutlet var clearButton: UIButton!
    @IBOutlet var actionButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLablel.font = textLablel.font.withSize(30)
        textLablel.isHidden = true
        actionButtons[0].layer.cornerRadius = 5
        actionButtons[1].layer.cornerRadius = 5
        clearButton.layer.cornerRadius = 5
        clearButton.isHidden = true
    }

    @IBAction func actions(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            textLablel.isHidden = false
            textLablel.text = "Hello, World!"
            textLablel.textColor = .blue
            clearButton.isHidden = false
        case 1:
            textLablel.isHidden = false
            textLablel.text = "Hello there!"
            textLablel.textColor = .red
            clearButton.isHidden = false
        case 2:
            textLablel.isHidden = true
            clearButton.isHidden = true
        default:
            return
        }
    }
    
}

