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
    var choosed = false
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
    let imageviewForLogo : UIImageView = {
        let cons = UIImageView()
        cons.translatesAutoresizingMaskIntoConstraints = false
        cons.layer.cornerRadius = 14
        return cons
    }()
    let chooseAsign : UILabel = {
        let cons = UILabel()
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
        
        view.addSubview(imageviewForLogo)
        view.addSubview(nextButton)
        view.addSubview(mailLoginButton)
        view.addSubview(phoneLoginButton)
        view.addSubview(facebookLoginButton)
        view.addSubview(googleLoginButton)
        
   view.addSubview(chooseAsign)

        imageviewForLogo.topToSuperview(offset: 180)
        imageviewForLogo.centerXToSuperview()
        imageviewForLogo.image = UIImage(named: "TwinkleLogo")
        imageviewForLogo.width(285)
        imageviewForLogo.height(130)
        
   
        view.addSubview(chooseAsign)
            chooseAsign.centerXToSuperview()
            chooseAsign.top(to: imageviewForLogo,offset: 155)
            chooseAsign.textColor = .white

        chooseAsign.text = "Please choose a sign"
        chooseAsign.isHidden = true
        chooseAsign.font = .systemFont(ofSize: 20)
        
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
        
        
        let googleiconImage = UIImageView()
        let facebookiconImage = UIImageView()
        let mailIcon = UIImageView()
        googleiconImage.image = UIImage(named: "googleicon")
        facebookiconImage.image = UIImage(named: "facebookicon")
        mailIcon.image = UIImage(systemName: "envelope")
        googleLoginButton.addSubview(googleiconImage)
        googleiconImage.leading(to: googleLoginButton,offset:6)
        googleiconImage.centerY(to: googleLoginButton)
        googleiconImage.width(40)
        googleiconImage.height(40)
        
        googleLoginButton.addSubview(facebookiconImage)
        facebookiconImage.leading(to: facebookLoginButton,offset:7)
        facebookiconImage.centerY(to: facebookLoginButton)
        facebookiconImage.width(30)
        facebookiconImage.height(30)
        
        mailLoginButton.addSubview(mailIcon)
        mailIcon.leading(to: mailLoginButton,offset:6)
        mailIcon.centerY(to: mailLoginButton)
        mailIcon.width(40)
        mailIcon.height(29)
        
    
       
        nextButton.bottomToSuperview(offset:-30)
        nextButton.trailingToSuperview(offset:25)
        nextButton.setImage(UIImage(named: "arrow"), for: .normal)
        nextButton.height(40)
        nextButton.width(45)
        nextButton.addTarget(self, action: #selector(nextButtonNext), for: .touchUpInside)
    }
    
 
    
    @objc func phoneLogin (){
         choosed = true
        resetButtonColors()
        chooseAsign.isHidden = true
        phoneLoginButton.backgroundColor = .yellow.withAlphaComponent(0.7)
        
    }
   
    @objc func mailLogin (){
         choosed = true
        resetButtonColors()
        chooseAsign.isHidden = true
        mailLoginButton.backgroundColor = .yellow.withAlphaComponent(0.7)
        
    }
    @objc func facebookLogin (){
         choosed = true
        resetButtonColors()
        chooseAsign.isHidden = true
     //   facebookLoginButton.backgroundColor = .blue
// facebookLoginButton.backgroundColor = .yellow.withAlphaComponent(0.7)
        facebookLoginButton.setTitleColor(.orange, for: .normal)
    }
    @objc func googleLogin (){
         choosed = true
       resetButtonColors()
        chooseAsign.isHidden = true
 googleLoginButton.backgroundColor = .yellow.withAlphaComponent(0.7)
    }
  
    @objc func resetButtonColors() {
        phoneLoginButton.backgroundColor = .white
        mailLoginButton.backgroundColor = .white
        facebookLoginButton.setTitleColor(.white, for: .normal)
        googleLoginButton.backgroundColor = .white
    }
    @objc func nextButtonNext() {
      
        if choosed == true{
          
            let nextViewController = ChooseGenderVC()
            nextViewController.modalPresentationStyle = .fullScreen
            self.present(nextViewController, animated: true)
        } else {
            print("Lütfen bir düğme seçin.")
            chooseAsign.isHidden = false
            print( chooseAsign.isHidden)
            
            
        }
        
    }
    
}
