//
//  ViewController.swift
//  FoodTracker
//
//  Created by Mrinalini Sinha on 3/1/17.
//  Copyright © 2017 Mrinalini Sinha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    //MARK: Properties
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

    // Handle text field's inputs through delegate callbacks
    // When a ViewController instance is loaded, it sets itself as the delegate of its nameTextField property.
        nameTextField.delegate = self

        
    }
    
    //MARK: UITextFieldDelegate
    
    //When the return or done key is tapped
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        //Hide the keyboard
        textField.resignFirstResponder()
        
        //make this method return a boolean indicating whther or not the system should process the tapping of the return key
        return true
        
    }
    
    //after the textfield resigns its first responder status
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
    }

    //MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
    
}

