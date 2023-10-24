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
        name.translatesAutoresizingMaskIntoConstraints = false
        name.layer.cornerRadius = 14
        return name
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
        nameTextField.backgroundColor = .white
        nameTextField.height(55)
        nameTextField.width(200)
        
        view.addSubview(nextButton)
        nextButton.bottomToSuperview(offset:-30)
        nextButton.trailingToSuperview(offset:30)
        nextButton.setImage(UIImage(systemName: "arrowshape.right"), for: .normal)
        nextButton.height(30)
        nextButton.width(30)
        nextButton.addTarget(self, action: #selector(nextButtonNext), for: .touchUpInside)
        
        
    }
    

 
    
    @objc func nextButtonNext (){
        let nextViewController = SurnameVC()
        nextViewController.modalPresentationStyle = .fullScreen
       self.present(nextViewController, animated: true)
       
    }
    
}
