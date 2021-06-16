//
//  ViewController.swift
//  BirdNerd
//
//  Created by Scarlett Luo on 6/16/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var playerName1: UITextField!
    @IBOutlet var playerName2: UITextField!
    @IBOutlet var playerName3: UITextField!
    @IBOutlet var playerName4: UITextField!
    
    
    @IBAction func leftButtonTap(_ sender: UIButton) {
            
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension ViewController: UITextFieldDelegate {
     
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
