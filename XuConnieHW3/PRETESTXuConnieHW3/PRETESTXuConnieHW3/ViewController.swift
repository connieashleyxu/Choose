//
//  ViewController.swift
//  XuConnieHW3
//
//  Created by Connie Xu on 9/20/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pigButtonDidTapped(_ sender: UIButton) {
        if ((nameTextField.text!) == "") {
            let pigLabel = "Hogs & kisses 🐷"
            
            resultLabel.text = pigLabel
        }
        else {
            let pigLabel = "\(nameTextField.text!), hogs & kisses 🐷"
            
            resultLabel.text = pigLabel
        }
    }
    
    @IBAction func cowButtonDidTapped(_ sender: UIButton) {
        if ((nameTextField.text!) == "") {
            let cowLabel = "You are legen-dairy 🐮"
            
            resultLabel.text = cowLabel
        }
        else {
            let cowLabel = "\(nameTextField.text!), you are legen-dairy 🐮"
            
            resultLabel.text = cowLabel
        }
    }
    
    @IBAction func resetButtonDidTapped(_ sender: UIButton) {
        resultLabel.text = ""
        nameTextField.text = ""
    }
    
    @IBAction func doneDidTapped(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    @IBAction func backgroundButtonDidTapped(_ sender: UIButton) {
        nameTextField.resignFirstResponder()
    }
}
