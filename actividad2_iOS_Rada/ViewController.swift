//
//  ViewController.swift
//  actividad2_iOS_Rada
//
//  Created by athaína rada on 25/01/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mensaje: UILabel!
    
    @IBOutlet weak var labelNumer: UILabel!
    
    @IBOutlet weak var inputNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func guessButton(_ sender: UIButton) {
        let randomNumber = Int(arc4random_uniform(6)+1)
        labelNumer.text = String(randomNumber)
        
        if inputNumber.text == labelNumer.text{
            view.backgroundColor = UIColor.green
            mensaje.text = "adivinaste"
            
        } else{
            view.backgroundColor = UIColor.red
            mensaje.text = "no adivinaste"
        }
    }
    
}

