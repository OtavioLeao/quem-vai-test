//
//  ViewController.swift
//  Quem vai beber?
//
//  Created by Otavio Augusto Ferreira Leao on 14/06/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBAction func playButton(_ sender: Any) {
        
        print("botao play" + textField.text! )
    }
    @IBAction func resetPlayers(_ sender: Any) {
        print("botao reset")

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

