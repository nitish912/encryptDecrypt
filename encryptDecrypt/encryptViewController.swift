//
//  encryptViewController.swift
//  encryptDecrypt
//
//  Created by Deekshith Ms on 04/02/20.
//  Copyright © 2020 Centura. All rights reserved.
//

import UIKit

class encryptViewController: UIViewController,UITextFieldDelegate {

    
   let value = "an apple laaptopp"
    let key = "a1n1 1a1p2l1e1 1l1a2p1t1o1p2"
    
    
    @IBOutlet weak var encryptTextField: UITextField!
    
    
    @IBOutlet weak var submitButton: UIButton!
    
    
    
    @IBOutlet weak var encryptResultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Encryption"
      encryptTextField.delegate=self
        
     
        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func submitButtonClicked(_ sender: Any) {
        print(encryptTextField.text!)
        
        if (encryptTextField.text!.isEmpty){
            submitButton.isEnabled = false
        }

        if value == encryptTextField.text!{
            print("done")
            encryptResultLabel.text = key as String
           
            }
       
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
         print(encryptTextField.text!)
      
            encryptResultLabel.text="label"
        
        return true
    }
  
    }
