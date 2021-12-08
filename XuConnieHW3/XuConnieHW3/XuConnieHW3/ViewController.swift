//
//  ViewController.swift
//  XuConnieHW3
//
//  Created by Connie Xu on 9/22/21.
//

import UIKit

//had error adding this as its own file, so added HW3AccessibilityIdentifiers here
struct HW3AccessibilityIdentifiers {
    /// Identifier for your UILabel asking the user the question
    static let questionLabel = "questionLabel"
    /// Identifier for the UITextField that the user can input their answer into
    static let answerTextField = "answerTextField"
    /// Identifier for the first UIButton the user can press to select the first option
    static let optionButton1 = "optionButton1"
    /// Identifier for the second UIButton the user can press to select the second option
    static let optionButton2 = "optionButton2"
    /// Identifier for the UIImageView used to display content near the first option button
    /// if the button has text. Not required if the button has no text and its own image.
    static let answerImageView1 = "answerImageView1"
    /// Identifier for the UIImageView used to display content near the second option button
    /// if the button has text. Not required if the button has no text and its own image.
    static let answerImageView2 = "answerImageView2"
    /// Identifier for the UILabel that displays the message to the user based on their input
    static let messageLabel = "messageLabel"
    /// Identifer for the UIButton that resets the state of the app
    static let resetButton = "resetButton"
}


class ViewController: UIViewController {

    //IB OUTLETS
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var pigImage: UIImageView!
    
    @IBOutlet weak var cowImage: UIImageView!
    
    @IBOutlet weak var pigButton: UIButton!
    
    @IBOutlet weak var cowButton: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        titleLabel.accessibilityIdentifier = HW3AccessibilityIdentifiers.questionLabel
        nameTextField.accessibilityIdentifier = HW3AccessibilityIdentifiers.answerTextField
        resultLabel.accessibilityIdentifier = HW3AccessibilityIdentifiers.messageLabel
        pigImage.accessibilityIdentifier = HW3AccessibilityIdentifiers.answerImageView1
        cowImage.accessibilityIdentifier = HW3AccessibilityIdentifiers.answerImageView2
        pigButton.accessibilityIdentifier = HW3AccessibilityIdentifiers.optionButton1
        cowButton.accessibilityIdentifier = HW3AccessibilityIdentifiers.optionButton2
        resetButton.accessibilityIdentifier = HW3AccessibilityIdentifiers.resetButton
//        titleLabel.accessibilityIdentifier = HW3AccessibilityIdentifiers.questionLabel
//        titleLabel.accessibilityIdentifier = HW3AccessibilityIdentifiers.questionLabel
//        titleLabel.accessibilityIdentifier = HW3AccessibilityIdentifiers.questionLabel

// 
    }
    
    //IB ACTIONS
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
    
    @IBAction func backgroundDidTapped(_ sender: UIButton) {
        nameTextField.resignFirstResponder()
    }
}

