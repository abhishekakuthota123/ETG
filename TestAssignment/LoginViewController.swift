
//
//  LoginViewController.swift
//  LoginAssignment
//
//  Created by Abhishek Akuthota on 30/12/20

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("LOG IN", for: .normal)
        button.addTarget(self, action: #selector(didTapLogIn), for: .touchUpInside)
        return button
    }()
    
    @objc
    private func didTapLogIn() {
        let homeVC = HomeViewController()
        self.present(homeVC, animated: true)
    }
    
    
    private lazy var email: UITextField = {
        let sampleTextField = UITextField()
        sampleTextField.placeholder = "Enter you email"
        sampleTextField.font = UIFont.systemFont(ofSize: 15)
        sampleTextField.borderStyle = UITextField.BorderStyle.roundedRect
        sampleTextField.autocorrectionType = UITextAutocorrectionType.no
        sampleTextField.keyboardType = UIKeyboardType.default
        sampleTextField.returnKeyType = UIReturnKeyType.done
        sampleTextField.clearButtonMode = UITextField.ViewMode.whileEditing
        sampleTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        return sampleTextField
    }()
    
    private lazy var password: UITextField = {
        let sampleTextField = UITextField()
        sampleTextField.placeholder = "Enter your password"
        sampleTextField.font = UIFont.systemFont(ofSize: 15)
        sampleTextField.borderStyle = UITextField.BorderStyle.roundedRect
        sampleTextField.autocorrectionType = UITextAutocorrectionType.no
        sampleTextField.keyboardType = UIKeyboardType.default
        sampleTextField.returnKeyType = UIReturnKeyType.done
        sampleTextField.clearButtonMode = UITextField.ViewMode.whileEditing
        sampleTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        return sampleTextField
    }()
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 10
        email.delegate = self
        password.delegate = self
        setUpViews()
        self.view.backgroundColor = UIColor.red
    }
    
    private func setUpViews() {
        self.view.addSubview(email)
        self.view.addSubview(password)
        self.view.addSubview(loginButton)
        
        email.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().offset(60)
        }
        
        password.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(email.snp.bottom).offset(40)
        }
        
        loginButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(password.snp.bottom).offset(40)
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {   //delegate method
        textField.resignFirstResponder()
        return true
    }
    
}
