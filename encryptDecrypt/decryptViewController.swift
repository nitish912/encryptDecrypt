//
//  decryptViewController.swift
//  encryptDecrypt
//
//  Created by Deekshith Ms on 04/02/20.
//  Copyright © 2020 Centura. All rights reserved.
//

import UIKit

class decryptViewController: UIViewController,UITextFieldDelegate {
    let value = "an apple laaptopp"
    let key = "a1n1 1a1p2l1e1 1l1a2p1t1o1p2"
    
    @IBOutlet weak var decryptTextField: UITextField!
    
    
    @IBOutlet weak var submitButton: UIButton!
    
   
    @IBOutlet weak var decryptResultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        decryptTextField.delegate = self
        navigationItem.title = "Decryption"

        // Do any additional setup after loading the view.
    }
    

    @IBAction func submitButtonClicked(_ sender: Any) {
        
        print(decryptTextField.text!)
        
        if (decryptTextField.text!.isEmpty){
            submitButton.isEnabled = false
        }
        
        if key == decryptTextField.text!{
            print("done")
            decryptResultLabel.text = value as String
            
        }
        
        
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print(decryptTextField.text!)
      
            decryptResultLabel.text="label"
       
        return true
    }


}
    


