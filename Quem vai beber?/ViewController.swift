//
//  ViewController.swift
//  Quem vai beber?
//
//  Created by Otavio Augusto Ferreira Leao on 14/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    var listPlayers: [String] = []

    
    @IBOutlet weak var textField: UITextField!
    @IBAction func playButton(_ sender: Any) {
        
        
        if (!textField.text!.isEmpty){
            listPlayers.append(textField.text!)
            textField.text = ""
        }
        print("lista" , listPlayers)
        
        
    }
    @IBAction func resetPlayers(_ sender: Any) {
        let chosen = arc4random_uniform(UInt32(listPlayers.count))
        print("sortudo", listPlayers[Int(chosen)])

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

