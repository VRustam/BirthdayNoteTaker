//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Rustam Valizada on 01.09.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var birthdayTextField: UITextField!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var birthdayLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storeName = UserDefaults.standard.object(forKey: "name")
        let storeBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let newName = storeName as? String {
            nameLabel.text = " Named : \(newName)"
        }
        
        
        if let newBirthday = storeBirthday as? String {
            birthdayLabel.text = " Birthday : \(newBirthday)"
        }
       
    }

    
    @IBAction func saveButton(_ sender: Any) {
        
        UserDefaults.standard.set(nameTextField.text!, forKey: "name")
        UserDefaults.standard.set(birthdayTextField.text!, forKey: "birthday")
        
        nameLabel.text = " Named : \(nameTextField.text!)"
        
        birthdayLabel.text = " Birthday : \(birthdayTextField.text!)"
        
    }
    
    
    @IBAction func clearButton(_ sender: Any) {
        let storeName = UserDefaults.standard.object(forKey: "name")
        let storeBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if (storeName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name"
        }
        
        if (storeBirthday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthdayLabel.text = "Birthday"
        }
        
    }
    
}

