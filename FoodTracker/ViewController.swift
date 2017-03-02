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

    override func viewDidLoad() {
        super.viewDidLoad()

    //Handle text field's inputs through delegate callbacks
    nameTextField.delegate = self
    //on line 11, made this class adopt the UITextFieldDelegate protocol. Then, on line 22, assigned the instance of this class  as the delegate of the textfield I am attacking.
    }

    //MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
    
}

