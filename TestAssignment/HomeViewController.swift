
//
//  HomeViewController.swift
//  LoginAssignment
//
//  Created by Abhishek Akuthota on 30/12/20


import Foundation
import UIKit
import SnapKit

final class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(button)
        self.view.backgroundColor = UIColor.red
        button.snp.makeConstraints {
            $0.centerX.centerY.equalToSuperview()
        }
    }
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("LOG OUT", for: .normal)
        button.addTarget(self, action: #selector(didTapLogOut), for: .touchUpInside)
        return button
    }()
    
    @objc
    private func didTapLogOut() {
        self.dismiss(animated: true)
    }
    
    
}
