//
//  ViewController.swift
//  CHARACTER SET & REGULAR EXPRESSION
//
//  Created by Syed.Reshma Ruksana on 21/10/19.
//  Copyright © 2019 Syed.Reshma Ruksana. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextViewDelegate,UITextFieldDelegate {

    var firstNameLabel:UILabel!
    var firstNameTextField:UITextField!
    
    var lastNameLabel:UILabel!
    var lastNameTextField:UITextField!
    
    var ageLabel:UILabel!
    var ageTextField:UITextField!
    
    var genderLabel:UILabel!
    var genderTextField:UITextField!
    
    var emailLabel:UILabel!
    var emailTextField:UITextField!
    
    var addressLabel:UILabel!
    var addressTextView:UITextView!
    
    var mobileNumberLabel:UILabel!
    var mobileNumberTextField:UITextField!
    
    var stateLabel:UILabel!
    var stateTextField:UITextField!
    
    var countryLabel:UILabel!
    var countryTextField:UITextField!
    
    var submitButton:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createForm()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func createForm()
    {
        
        self.view.backgroundColor = UIColor.black
        
        firstNameLabel=UILabel()
        firstNameLabel.frame=CGRect(x: 20, y: 60, width: 90, height: 30)
        firstNameLabel.text="First Name"
        firstNameLabel.backgroundColor = UIColor.yellow
        firstNameLabel.layer.cornerRadius=5.0
        view.addSubview(firstNameLabel)
        
        
        firstNameTextField=UITextField()
        firstNameTextField.frame=CGRect(x: 150, y: 60, width: 250, height: 30)
        firstNameTextField.placeholder="Enter your First Name"
        firstNameTextField.backgroundColor  = UIColor.yellow
        firstNameTextField.adjustsFontSizeToFitWidth=true
        firstNameTextField.keyboardType=UIKeyboardType.alphabet
        firstNameTextField.layer.cornerRadius=5.0
        firstNameTextField.clearButtonMode = .always
        firstNameTextField.delegate = self
        
        view.addSubview(firstNameTextField)
        
        
        lastNameLabel=UILabel()
        lastNameLabel.frame=CGRect(x: 20, y:95, width: 90, height: 30)
        lastNameLabel.text="Last Name"
        lastNameLabel.backgroundColor = UIColor.yellow
        lastNameLabel.layer.cornerRadius=5.0
        view.addSubview(lastNameLabel)
        
        lastNameTextField=UITextField()
        lastNameTextField.frame=CGRect(x: 150, y: 95, width: 250, height: 30)
        lastNameTextField.placeholder="Enter your Last Name"
        lastNameTextField.backgroundColor  = UIColor.yellow
        lastNameTextField.adjustsFontSizeToFitWidth=true
        lastNameTextField.keyboardType=UIKeyboardType.alphabet
        lastNameTextField.layer.cornerRadius=5.0
        lastNameTextField.clearButtonMode = .always
        lastNameTextField.delegate = self
        
        view.addSubview(lastNameTextField)
        
        
        ageLabel=UILabel()
        ageLabel.frame=CGRect(x: 20, y:130, width: 90, height: 30)
        ageLabel.text="Age"
        ageLabel.backgroundColor = UIColor.yellow
        ageLabel.layer.cornerRadius=5.0
        view.addSubview(ageLabel)
        
        ageTextField=UITextField()
        ageTextField.frame=CGRect(x: 150, y: 130, width: 250, height: 30)
        ageTextField.placeholder="Enter your Age"
        ageTextField.backgroundColor  = UIColor.yellow
        ageTextField.keyboardType=UIKeyboardType.numberPad
        ageTextField.layer.cornerRadius=5.0
        ageTextField.clearButtonMode = .always
        ageTextField.delegate = self
        
        view.addSubview(ageTextField)
        
        
        genderLabel=UILabel()
        genderLabel.frame=CGRect(x: 20, y:165, width: 90, height: 30)
        genderLabel.text="Gender"
        genderLabel.backgroundColor = UIColor.yellow
        genderLabel.layer.cornerRadius=5.0
        view.addSubview(genderLabel)
        
        genderTextField=UITextField()
        genderTextField.frame=CGRect(x: 150, y: 165, width: 250, height: 30)
        genderTextField.placeholder="MALE/FEMALE"
        genderTextField.backgroundColor  = UIColor.yellow
        genderTextField.layer.cornerRadius=5.0
        genderTextField.keyboardType=UIKeyboardType.alphabet
        genderTextField.clearButtonMode = .always
        genderTextField.delegate = self
        
        view.addSubview(genderTextField)
        
        emailLabel=UILabel()
        emailLabel.frame=CGRect(x: 20, y:200, width: 90, height: 30)
        emailLabel.text="E-mail"
        emailLabel.backgroundColor = UIColor.yellow
        emailLabel.layer.cornerRadius=5.0
        view.addSubview(emailLabel)
        
        emailTextField=UITextField()
        emailTextField.frame=CGRect(x: 150, y: 200, width: 250, height: 30)
        emailTextField.placeholder="Enter your Email ID"
        emailTextField.backgroundColor  = UIColor.yellow
        emailTextField.layer.cornerRadius=5.0
        emailTextField.keyboardType=UIKeyboardType.emailAddress
        emailTextField.clearButtonMode = .always
        emailTextField.delegate = self
        
        view.addSubview(emailTextField)
        
        addressLabel=UILabel()
        addressLabel.frame=CGRect(x: 20, y:270, width: 90, height: 30)
        addressLabel.text="Address"
        addressLabel.backgroundColor = UIColor.yellow
        addressLabel.layer.cornerRadius=5.0
        
        view.addSubview(addressLabel)
        
        addressTextView=UITextView()
        addressTextView.frame=CGRect(x: 150, y: 270, width: 250, height: 40)
        addressTextView.backgroundColor  = UIColor.yellow
        addressTextView.layer.cornerRadius=5.0
        addressTextView.keyboardType=UIKeyboardType.asciiCapable
        addressTextView.delegate = self
        
        view.addSubview(addressTextView)
        
        mobileNumberLabel=UILabel()
        mobileNumberLabel.frame=CGRect(x: 20, y:235, width: 90, height: 30)
        mobileNumberLabel.text="Mobile No:"
        mobileNumberLabel.backgroundColor = UIColor.yellow
        mobileNumberLabel.layer.cornerRadius=5.0
        view.addSubview(mobileNumberLabel)
        
        mobileNumberTextField=UITextField()
        mobileNumberTextField.frame=CGRect(x: 150, y: 235, width: 250, height: 30)
        mobileNumberTextField.placeholder="Enter your Mobile Number"
        mobileNumberTextField.backgroundColor  = UIColor.yellow
        mobileNumberTextField.layer.cornerRadius=5.0
        mobileNumberTextField.keyboardType=UIKeyboardType.numberPad
        mobileNumberTextField.clearButtonMode = .always
        mobileNumberTextField.delegate = self
        
        view.addSubview(mobileNumberTextField)
        
        stateLabel=UILabel()
        stateLabel.frame=CGRect(x: 20, y:315, width: 90, height: 30)
        stateLabel.text="State"
        stateLabel.backgroundColor = UIColor.yellow
        stateLabel.layer.cornerRadius=5.0
        view.addSubview(stateLabel)
        
        stateTextField=UITextField()
        stateTextField.frame=CGRect(x: 150, y: 315, width: 250, height: 30)
        stateTextField.placeholder="Enter your State Name"
        stateTextField.backgroundColor  = UIColor.yellow
        stateTextField.layer.cornerRadius=5.0
        stateTextField.keyboardType=UIKeyboardType.alphabet
        stateTextField.clearButtonMode = .always
        stateTextField.delegate = self
        
        view.addSubview(stateTextField)
        
        countryLabel=UILabel()
        countryLabel.frame=CGRect(x: 20, y:350, width: 90, height: 30)
        countryLabel.text="Country"
        countryLabel.backgroundColor = UIColor.yellow
        countryLabel.layer.cornerRadius=5.0
        view.addSubview(countryLabel)
        
        countryTextField=UITextField()
        countryTextField.frame=CGRect(x: 150, y: 350, width: 250, height: 30)
        countryTextField.placeholder="Enter your Country Name"
        countryTextField.backgroundColor  = UIColor.yellow
        countryTextField.layer.cornerRadius=5.0
        countryTextField.keyboardType=UIKeyboardType.alphabet
        countryTextField.clearButtonMode = .always
        countryTextField.delegate = self
        
        view.addSubview(countryTextField)
        
        
        
        submitButton=UIButton(type: UIButton.ButtonType.system)
        submitButton.frame=CGRect(x: 170, y: 400, width: 60, height: 40)
        submitButton.backgroundColor=UIColor.yellow
        submitButton.tintColor=UIColor.blue
        submitButton.setTitle("SUBMIT", for: UIControl.State.normal)
        submitButton.layer.cornerRadius=5.0
        view.addSubview(submitButton)
        
        
    }
    
// SHOULD BEGIN EDITING
    var returnVal:Bool = false

    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool
    {
        if(textField == firstNameTextField)
        {
            returnVal = true
        }else if(textField == lastNameTextField)
        {
            if(firstNameTextField.text!.count>2)
            {
                returnVal = true
            }else
            {
                returnVal = false
            }
        }else if(textField == ageTextField)
        {
            if(firstNameTextField.text!.count>2 &&
                lastNameTextField.text!.count>2 )
            {
                returnVal = true
            }else
            {
                returnVal = false
            }
        }else if(textField == genderTextField)
        {
            if(firstNameTextField.text!.count>2 && lastNameTextField.text!.count>2 &&
                Int(ageTextField.text!)! < 120)
            {
                returnVal = true
            }else
            {
                returnVal = false
            }
        }else if(textField == emailTextField)
        {
            if(firstNameTextField.text!.count>2 &&
                lastNameTextField.text!.count>2 &&
                Int(ageTextField.text!)! < 120 &&
                genderTextField.text!.count>1)
            {
                returnVal = true
            }else
            {
                returnVal = false
            }
        }else if(textField == mobileNumberTextField)
        {
            if(firstNameTextField.text!.count>2 &&
                lastNameTextField.text!.count>2 &&
                Int(ageTextField.text!)! < 120 &&
                genderTextField.text!.count>1 &&
                emailTextField.text!.count>2)
            {
                returnVal = true
            }else
            {
                returnVal = false
            }
        }
        
        else if(textField == stateTextField)
        {
            if(firstNameTextField.text!.count>2 &&
                lastNameTextField.text!.count>2 &&
                Int(ageTextField.text!)! < 120 &&
                genderTextField.text!.count>1 &&
                emailTextField.text!.count>2 &&
                mobileNumberTextField.text!.count == 10 &&
                addressTextView.text!.count>2)
            {
                returnVal = true
            }else
            {
                returnVal = false
            }
        }else if(textField == countryTextField)
        {
            if(firstNameTextField.text!.count>2 &&
                lastNameTextField.text!.count>2 &&
                Int(ageTextField.text!)! < 120 &&
                genderTextField.text!.count>1 &&
                emailTextField.text!.count>2 &&
                mobileNumberTextField.text!.count == 10 &&
                addressTextView.text!.count>2 &&
                stateTextField.text!.count>2)
            {
                returnVal = true
            }else
            {
                returnVal = false
            }
        }
        
        
        return returnVal
    }
    
    // DID BEGIN EDITING
    
    func textFieldDidBeginEditing(_ textField: UITextField)
    {
        textField.backgroundColor = UIColor.white
    }
    

    //SHOULD CLEAR
    
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool
    {
        return true
    }
    
    // SHOULD RETURN
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        
        return true
    }
    
    
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool
    {
         returnVal=false
        
        if(mobileNumberTextField.text?.count == 10)
        {
            returnVal = true
        }
        
        return returnVal
    }
    
    // SHOULD END EDITING
    
     func textFieldShouldEndEditing(_ textField: UITextField) -> Bool
    {
        textField.backgroundColor=UIColor.yellow

        if(textField==firstNameTextField)
        {
            returnVal = isValidForAlphabets(alphabets: textField.text!)
        }
        
        if(textField==lastNameTextField)
        {
            returnVal = isValidForAlphabets(alphabets: textField.text!)
        }
        
        if(textField==genderTextField)
        {
            returnVal = isValidForAlphabets(alphabets: textField.text!)
        }
        
        if(textField==stateTextField)
        {
            returnVal = isValidForAlphabets(alphabets: textField.text!)
        }
        
        if(textField==countryTextField)
        {
            returnVal = isValidForAlphabets(alphabets: textField.text!)
        }
        
        if(textField==emailTextField)
        {
            returnVal = isValidEmail(emailStr: textField.text!)
        }
        
        if(textField==mobileNumberTextField)
        {
            returnVal = isValidForNumbers(numbers: textField.text!)
        }
        
        if(textField==ageTextField)
        {
            returnVal = isValidForNumbers(numbers: textField.text!)
        }
        
        
        return returnVal
    }


    
// FIRSTNAME , LASTNAME , GENDER , STATE ,COUNTRY

func isValidForAlphabets(alphabets:String) -> Bool {
        let RegEx = "[A-Za-z ]{2,25}"
        let Test = NSPredicate(format:"SELF MATCHES %@", RegEx)
        return Test.evaluate(with: alphabets)
    }
    

    
// EMAIL NAME
    
func isValidEmail(emailStr:String) -> Bool {
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    
    let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailPred.evaluate(with: emailStr)

}

// PHONE NUMBER & AGE
    
    func isValidForNumbers(numbers:String) -> Bool {
        let RegEx = "[0-9 ]{2,10}"
        let Test = NSPredicate(format:"SELF MATCHES %@", RegEx)
        return Test.evaluate(with: numbers)
    }
    

}
