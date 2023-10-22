//
//  LoginwithVC.swift
//  TwinkleApp
//
//  Created by Macbook Air on 22.10.2023.
//
//google mail facebook telefon

import UIKit
import TinyConstraints
class LoginwithVC: UIViewController {
   
    let labelSignIn : UILabel = {
        let cons = UILabel()
        cons.translatesAutoresizingMaskIntoConstraints = false
      
        return cons
    }()
    let googleLoginButton : UIButton = {
        let cons = UIButton()
        cons.translatesAutoresizingMaskIntoConstraints = false
        cons.layer.cornerRadius = 14
        return cons
    }()
    let mailLoginButton : UIButton = {
        let cons = UIButton()
        cons.translatesAutoresizingMaskIntoConstraints = false
        cons.layer.cornerRadius = 14
        return cons
    }()
    let facebookLoginButton : UIButton = {
        let cons = UIButton()
        cons.translatesAutoresizingMaskIntoConstraints = false
        cons.layer.cornerRadius = 14
        return cons
    }()
    let phoneLoginButton : UIButton = {
        let cons = UIButton()
        cons.layer.cornerRadius = 14
        cons.translatesAutoresizingMaskIntoConstraints = false
        return cons
    }()
    let imageview : UIImageView = {
        let cons = UIImageView()
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
        
        //Background designing
        let backgroundImageView = UIImageView()
        backgroundImageView.image = UIImage(named: "mainImage")
        backgroundImageView.contentMode = .scaleAspectFill
        view.addSubview(backgroundImageView)
        backgroundImageView.edges(to: view)
        
        view.addSubview(nextButton)
        view.addSubview(mailLoginButton)
        view.addSubview(phoneLoginButton)
        view.addSubview(facebookLoginButton)
        view.addSubview(googleLoginButton)
        view.addSubview(imageview)
        view.addSubview(labelSignIn)
        
        labelSignIn.bottomToSuperview(offset: -60)
        labelSignIn.centerXToSuperview()
        labelSignIn.text = "  I already have an account"
        labelSignIn.textColor = .white
        labelSignIn.font = .systemFont(ofSize: 20)
        
        phoneLoginButton.leadingToSuperview(offset: 55)
        phoneLoginButton.trailingToSuperview(offset: 55)
        phoneLoginButton.bottomToSuperview(offset: -140)
        phoneLoginButton.backgroundColor = .white
        phoneLoginButton.setTitle("  Continue with phone number", for: .normal)
        phoneLoginButton.setTitleColor(.black, for: .normal)
        phoneLoginButton.height(50)
        phoneLoginButton.addTarget(self, action: #selector(phoneLogin), for: .touchUpInside)
        
        mailLoginButton.leadingToSuperview(offset: 55)
        mailLoginButton.trailingToSuperview(offset: 55)
        mailLoginButton.bottom(to: phoneLoginButton,offset:-70)
        mailLoginButton.backgroundColor = .white
        mailLoginButton.setTitle("  Continue with mail", for: .normal)
        mailLoginButton.setTitleColor(.black, for: .normal)
        mailLoginButton.height(50)
        mailLoginButton.addTarget(self, action: #selector(mailLogin), for: .touchUpInside)
        
        facebookLoginButton.leadingToSuperview(offset: 55)
        facebookLoginButton.trailingToSuperview(offset: 55)
        facebookLoginButton.bottom(to: mailLoginButton,offset:-70)
        facebookLoginButton.backgroundColor = .blue
        facebookLoginButton.setTitle("  Continue with Facebook", for: .normal)
        facebookLoginButton.setTitleColor(.white, for: .normal)
        facebookLoginButton.height(50)
        facebookLoginButton.addTarget(self, action: #selector(facebookLogin), for: .touchUpInside)
        
        googleLoginButton.leadingToSuperview(offset: 55)
        googleLoginButton.trailingToSuperview(offset: 55)
        googleLoginButton.bottom(to: facebookLoginButton,offset:-70)
        googleLoginButton.backgroundColor = .white
        googleLoginButton.setTitle("  Continue with Google", for: .normal)
        googleLoginButton.setTitleColor(.black, for: .normal)
        googleLoginButton.height(50)
        googleLoginButton.addTarget(self, action: #selector(googleLogin), for: .touchUpInside)
        
        
        nextButton.bottomToSuperview(offset:-30)
        nextButton.trailingToSuperview(offset:30)
        nextButton.setImage(UIImage(systemName: "arrowshape.right"), for: .normal)
        nextButton.height(30)
        nextButton.width(30)
        googleLoginButton.addTarget(self, action: #selector(nextButtonNext), for: .touchUpInside)
    }
    
    @objc func phoneLogin (){
//        let nextViewController = ChooseGenderVC()
//        nextViewController.modalPresentationStyle = .fullScreen
//        self.present(nextViewController, animated: true)
    }
   
    @objc func mailLogin (){
//        let nextViewController = ChooseGenderVC()
//        nextViewController.modalPresentationStyle = .fullScreen
//        self.present(nextViewController, animated: true)
        print("mailll")
    }
    @objc func facebookLogin (){
//        let nextViewController = ChooseGenderVC()
//        nextViewController.modalPresentationStyle = .fullScreen
//        self.present(nextViewController, animated: true)
        print("faceee")
    }
    @objc func googleLogin (){
//        let nextViewController = ChooseGenderVC()
//        nextViewController.modalPresentationStyle = .fullScreen
//        self.present(nextViewController, animated: true)
        print("gogggii")
    }
    @objc func nextButtonNext (){
        let nextViewController = ChooseGenderVC()
        nextViewController.modalPresentationStyle = .fullScreen
       self.present(nextViewController, animated: true)
       
    }
    
}
