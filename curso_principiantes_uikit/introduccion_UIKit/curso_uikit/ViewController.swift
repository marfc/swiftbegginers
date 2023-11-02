//
//  ViewController.swift
//  curso_uikit
//
//  Created by Mfercons on 2/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var botoncilloButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        nameLabel.textColor = .darkGray
        botoncilloButton.setTitle("Botonsillo 🤖", for: .normal) 
    }

    @IBAction func didTapOnBotoncillo(_ sender: Any) {
        print("Has pulsado genial el botón!")
    }
    
}

