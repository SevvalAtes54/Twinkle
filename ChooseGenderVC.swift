//
//  ChooseGenderVC.swift
//  TwinkleApp
//
//  Created by Macbook Air on 23.10.2023.
//

import UIKit
import TinyConstraints
class ChooseGenderVC: UIViewController {
    var choosed = false
    let labelQuestion : UITextView = {
        let cons = UITextView()
        cons.translatesAutoresizingMaskIntoConstraints = false
      
        return cons
    }()
    let labelDescript : UITextView = {
        let cons = UITextView()
        cons.translatesAutoresizingMaskIntoConstraints = false
      
        return cons
    }()
    let womanButton : UIButton = {
        let cons = UIButton()
        cons.translatesAutoresizingMaskIntoConstraints = false
        cons.layer.cornerRadius = 14
        return cons
    }()
    let manButton : UIButton = {
        let cons = UIButton()
        cons.translatesAutoresizingMaskIntoConstraints = false
        cons.layer.cornerRadius = 14
        return cons
    }()
    let nonbinaryButton : UIButton = {
        let cons = UIButton()
        cons.translatesAutoresizingMaskIntoConstraints = false
        cons.layer.cornerRadius = 14
        return cons
    }()
    let nextButton : UIButton = {
        let cons = UIButton()
        cons.translatesAutoresizingMaskIntoConstraints = false
//        cons.layer.cornerRadius = 14
        return cons
    }()
    let chooseAsign : UILabel = {
        let cons = UILabel()
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
        
        view.addSubview(labelQuestion)
        view.addSubview(womanButton)
        view.addSubview(labelDescript)
        view.addSubview(manButton)
        view.addSubview(nonbinaryButton)
        view.addSubview(nextButton)
        view.addSubview(chooseAsign)
        
       
        
        
        labelQuestion.topToSuperview(offset:120)
        labelQuestion.text = "What is your gender"
        labelQuestion.leadingToSuperview(offset:55)
        labelQuestion.trailingToSuperview(offset:55)
        //        labelQuestion.centerXToSuperview()
        labelQuestion.font = .boldSystemFont(ofSize: 35)
        labelQuestion.tintColor = .white
        //        labelQuestion.width(350)
        labelQuestion.height(130)
        labelQuestion.backgroundColor = .clear
        
        
        labelDescript.top(to: labelQuestion,offset:100)
        labelDescript.text = "Your gender refer to how you identify yourself."
        labelDescript.leadingToSuperview(offset:55)
        labelDescript.trailingToSuperview(offset:55)
        labelDescript.font = .systemFont(ofSize: 20)
        labelDescript.tintColor = .white
        //        labelDescript.width(150)
        labelDescript.height(80)
        labelDescript.backgroundColor = .clear
        
        chooseAsign.top(to: labelDescript,offset: 100)
        chooseAsign.centerXToSuperview()
        chooseAsign.textColor = .white
        chooseAsign.text = "Please choose a sign"
        chooseAsign.isHidden = true
        chooseAsign.font = .systemFont(ofSize: 20)
        
        womanButton.leadingToSuperview(offset: 55)
        womanButton.trailingToSuperview(offset: 55)
        womanButton.top(to: labelDescript,offset:170)
        womanButton.height(50)
        
        womanButton.backgroundColor = .white
        womanButton.setTitle("  Woman", for: .normal)
        womanButton.setTitleColor(.black, for: .normal)
        womanButton.height(50)
        womanButton.addTarget(self, action: #selector(woman), for: .touchUpInside)
        
        manButton.leadingToSuperview(offset: 55)
        manButton.trailingToSuperview(offset: 55)
        manButton.top(to: womanButton,offset:70)
        
        manButton.backgroundColor = .white
        manButton.setTitle("  Man", for: .normal)
        manButton.setTitleColor(.black, for: .normal)
        manButton.height(50)
        manButton.addTarget(self, action: #selector(mann), for: .touchUpInside)
        
        nonbinaryButton.leadingToSuperview(offset: 55)
        nonbinaryButton.trailingToSuperview(offset: 55)
        nonbinaryButton.top(to: manButton,offset:70)
        
        nonbinaryButton.backgroundColor = .white
        nonbinaryButton.setTitle("  Non Binary", for: .normal)
        nonbinaryButton.setTitleColor(.black, for: .normal)
        nonbinaryButton.height(50)
        nonbinaryButton.addTarget(self, action: #selector(nonbinary), for: .touchUpInside)
        
        
        
        
        nextButton.bottomToSuperview(offset:-30)
        nextButton.trailingToSuperview(offset:25)
        nextButton.setImage(UIImage(named: "arrow"), for: .normal)
        nextButton.height(40)
        nextButton.width(45)
        nextButton.addTarget(self, action: #selector(nextButtonNext), for: .touchUpInside)
        
    }
       
       @objc func woman (){
            choosed = true
           resetButtonColors()
           chooseAsign.isHidden = true
           womanButton.backgroundColor = .yellow.withAlphaComponent(0.7)
           
       }
      
       @objc func mann (){
            choosed = true
           resetButtonColors()
           chooseAsign.isHidden = true
           manButton.backgroundColor = .yellow.withAlphaComponent(0.7)
           
       }
       @objc func nonbinary (){
            choosed = true
           resetButtonColors()
           chooseAsign.isHidden = true
       
   nonbinaryButton.backgroundColor = .yellow.withAlphaComponent(0.7)
          
       }
    
     
       @objc func resetButtonColors() {
           nonbinaryButton.backgroundColor = .white
           manButton.backgroundColor = .white
           womanButton.backgroundColor = .white
       }
    @objc func nextButtonNext() {
      
        if choosed == true{
          
            let nextViewController = EducationVC()
            nextViewController.modalPresentationStyle = .fullScreen
            self.present(nextViewController, animated: true)
        } else {
            print("Lütfen bir düğme seçin.")
            chooseAsign.isHidden = false
            print( chooseAsign.isHidden)
            
            
        }
        
    }

  

}
