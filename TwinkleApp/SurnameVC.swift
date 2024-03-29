//
//  SurnameVC.swift
//  TwinkleApp
//
//  Created by Onur Akman on 22.10.2023.
//

import UIKit
import TinyConstraints

class SurnameVC: UIViewController {
    
    let surnameTextField : UITextField = {
        let surname = UITextField()
        surname.placeholder = "  Enter your surname"
        surname.attributedPlaceholder = NSAttributedString(string: "  Enter your surname" , attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        surname.translatesAutoresizingMaskIntoConstraints = false
        surname.layer.cornerRadius = 14
        surname.borderStyle = .none
        return surname
    }()
    
    let labelQuestion : UITextView = {
        let cons = UITextView()
        cons.translatesAutoresizingMaskIntoConstraints = false
        return cons
    }()

    let nextButton : UIButton = {
        let cons = UIButton()
        cons.translatesAutoresizingMaskIntoConstraints = false
//        cons.layer.cornerRadius = 14
        return cons
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImageView = UIImageView()
        backgroundImageView.image = UIImage(named: "mainImage")
        backgroundImageView.contentMode = .scaleAspectFill
        view.addSubview(backgroundImageView)
        backgroundImageView.edges(to: view)
 
        view.addSubview(surnameTextField)
        surnameTextField.topToSuperview(offset: 255)
        surnameTextField.trailingToSuperview(offset: 55)
        surnameTextField.centerXToSuperview()
       // surnameTextField.backgroundColor = .white
        surnameTextField.height(55)
        surnameTextField.width(200)
        
        view.addSubview(labelQuestion)
        labelQuestion.topToSuperview(offset:120)
        labelQuestion.text = "What is your surname?"
        labelQuestion.leadingToSuperview(offset:55)
        labelQuestion.trailingToSuperview(offset:55)
        labelQuestion.font = .boldSystemFont(ofSize: 35)
        labelQuestion.tintColor = .white
        labelQuestion.width(140)
        labelQuestion.height(100)
        labelQuestion.backgroundColor = .clear
        

        view.addSubview(nextButton)
        nextButton.bottomToSuperview(offset:-30)
        nextButton.trailingToSuperview(offset:30)
        nextButton.setImage(UIImage(systemName: "arrowshape.right"), for: .normal)
        nextButton.height(30)
        nextButton.width(30)
        nextButton.addTarget(self, action: #selector(nextButtonNext), for: .touchUpInside)
    }
    

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: surnameTextField.frame.size.height - 1.0, width: surnameTextField.frame.size.width, height: 1.0)
        bottomLine.backgroundColor = UIColor.black.cgColor
        surnameTextField.layer.addSublayer(bottomLine)
        surnameTextField.layer.masksToBounds = true
    }

    
    @objc func nextButtonNext (){
        let nextViewController = AgeVC()
        nextViewController.modalPresentationStyle = .fullScreen
       self.present(nextViewController, animated: true)
       
    }
    
    

}
