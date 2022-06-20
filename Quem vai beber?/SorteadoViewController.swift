//
//  SorteadoViewController.swift
//  Quem vai beber?
//
//  Created by Otavio Augusto Ferreira Leao on 20/06/22.
//

import UIKit

class SorteadoViewController: UIViewController {
    @IBOutlet weak var resultSortudo: UILabel!
    var sorteadoLabel = "0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewcontroller" , sorteadoLabel)

        resultSortudo.text = sorteadoLabel

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
