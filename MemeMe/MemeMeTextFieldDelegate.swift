//
//  MemeMeTextFieldDelegate.swift
//  MemeMe
//
//  Created by Richard Reed on 1/24/16.
//  Copyright © 2016 Richard Reed. All rights reserved.
//

import UIKit

class MemeMeTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    func textFieldDidBeginEditing(textField: UITextField) {
        if textField.text == "TOP" || textField.text == "BOTTOM" {
            textField.text = ""
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        if var input = textField.text {
            input = input.uppercaseString
        }
        return true
    }
    
}
