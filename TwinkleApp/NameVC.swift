    //
    //  NameVC.swift
    //  TwinkleApp
    //
    //  Created by Onur Akman on 22.10.2023.
    //

    import UIKit
    import TinyConstraints

    class NameVC: UIViewController {
        let nameTextField : UITextField = {
            let name = UITextField()
            name.placeholder = "  Enter your name"
            name.attributedPlaceholder = NSAttributedString(string: "  Enter your name" , attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
            name.translatesAutoresizingMaskIntoConstraints = false
            name.layer.cornerRadius = 14
            name.borderStyle = .none
            return name
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

            view.addSubview(nameTextField)
            nameTextField.topToSuperview(offset: 255)
            nameTextField.trailingToSuperview(offset: 55)
            nameTextField.centerXToSuperview()
         //   nameTextField.backgroundColor = .white
            nameTextField.height(55)
            nameTextField.width(200)
            
            view.addSubview(labelQuestion)
            labelQuestion.topToSuperview(offset:120)
            labelQuestion.text = "What is your name?"
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
            bottomLine.frame = CGRect(x: 0.0, y: nameTextField.frame.size.height - 1.0, width: nameTextField.frame.size.width, height: 1.0)
            bottomLine.backgroundColor = UIColor.black.cgColor
            
            // Add the bottom line to the nameTextField's layer
            nameTextField.layer.addSublayer(bottomLine)
            
            // This line is also important to make sure the bottom line is displayed correctly
            nameTextField.layer.masksToBounds = true
        }

     
        
        @objc func nextButtonNext (){
            let nextViewController = SurnameVC()
            nextViewController.modalPresentationStyle = .fullScreen
           self.present(nextViewController, animated: true)
           
        }
        
    }
