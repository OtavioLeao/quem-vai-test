//
//  ViewController.swift
//  Quem vai beber?
//
//  Created by Otavio Augusto Ferreira Leao on 14/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    var listPlayers: [String] = []
    var sortudo = ""
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var textField: UITextField!
    @IBAction func addPlayer_(_ sender: Any) {
        addPlayer()
    }
    @IBAction func play(_ sender: Any) {
       play()
        }
    
    @IBAction func resetPlayers(_ sender: Any) {
        listPlayers.removeAll()
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func play(){
        if (!listPlayers.isEmpty){
            random()
        } else {
            print("lista vazia")
        }
    }
    
    func random(){
        let random = arc4random_uniform(UInt32(listPlayers.count))
        let chose = listPlayers[Int(random)]
        print("sortudo", chose)
        sortudo = chose
        print("sortudo1", sortudo)
        alertaChose(chose: chose)
    

    }
    
    func addPlayer(){
        if (!textField.text!.isEmpty){
            listPlayers.append(textField.text!)
            textField.text = ""
        }
        print("lista" , listPlayers)
        tableView.reloadData()
    }
    
    func alertaChose(chose: String){
        let alert1 = UIAlertController(title: "Beba", message: ("\(chose)!!"), preferredStyle: .alert)
        let alert = UIAlertAction(title: "Ok", style: .default) { (action) in
            
        }
        
        alert1.addAction(alert)
        present(alert1, animated: true, completion: nil)
    }
    
    
    //testando passar valor para outra tela
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if (segue.identifier == "enviarDados"){
//            print("segue" , sortudo)
//
//            let viewController = segue.destination as! SorteadoViewController
//            viewController.sorteadoLabel = listPlayers[0]
//
//        }
//    }
    
//    func updateCountDown(){
//        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
//                if self.secondsRemaining > 0 {
//                    print ("\(self.secondsRemaining) seconds")
//                    self.secondsRemaining -= 1
//                    self.countDownLabel.text = String(self.secondsRemaining)
//                } else {
//                    Timer.invalidate()
//                }
//            }
//    }
    

}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listPlayers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = listPlayers[indexPath.row]
        return cell
        
    }
}

