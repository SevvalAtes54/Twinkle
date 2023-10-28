//
//  ZodiacSignVC.swift
//  TwinkleApp
//
//  Created by Macbook Air on 24.10.2023.
//

import UIKit
import TinyConstraints
class ZodiacSignVC: UIViewController {
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
    let ariesButton : UIButton = {
        let cons = UIButton()
        cons.translatesAutoresizingMaskIntoConstraints = false
        cons.layer.cornerRadius = 14
        return cons
    }()
    let taurusButton : UIButton = {
        let cons = UIButton()
        cons.translatesAutoresizingMaskIntoConstraints = false
        cons.layer.cornerRadius = 14
        return cons
    }()
    let GeminiButton : UIButton = {
        let cons = UIButton()
        cons.translatesAutoresizingMaskIntoConstraints = false
        cons.layer.cornerRadius = 14
        return cons
    }()
    let cancerButton : UIButton = {
        let cons = UIButton()
        cons.translatesAutoresizingMaskIntoConstraints = false
        cons.layer.cornerRadius = 14
        return cons
    }()
    let leoButton : UIButton = {
        let cons = UIButton()
        cons.translatesAutoresizingMaskIntoConstraints = false
        cons.layer.cornerRadius = 14
        return cons
    }()
    let virgoButton : UIButton = {
        let cons = UIButton()
        cons.translatesAutoresizingMaskIntoConstraints = false
        cons.layer.cornerRadius = 14
        return cons
    }()
    let libraButton : UIButton = {
        let cons = UIButton()
        cons.translatesAutoresizingMaskIntoConstraints = false
        cons.layer.cornerRadius = 14
        return cons
    }()
    let scorpioButton : UIButton = {
        let cons = UIButton()
        cons.translatesAutoresizingMaskIntoConstraints = false
        cons.layer.cornerRadius = 14
        return cons
    }()
    let sagittariusButton : UIButton = {
        let cons = UIButton()
        cons.translatesAutoresizingMaskIntoConstraints = false
        cons.layer.cornerRadius = 14
        return cons
    }()
    let capricoenButton : UIButton = {
        let cons = UIButton()
        cons.translatesAutoresizingMaskIntoConstraints = false
        cons.layer.cornerRadius = 14
        return cons
    }() 
    let aquariusButton : UIButton = {
        let cons = UIButton()
        cons.translatesAutoresizingMaskIntoConstraints = false
        cons.layer.cornerRadius = 14
        return cons
    }()
    let piscesButton : UIButton = {
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
      
        return cons
    }()
    override func viewDidLoad() {
        super.viewDidLoad()

        let backgroundImageView = UIImageView()
        backgroundImageView.image = UIImage(named: "mainImage")
        backgroundImageView.contentMode = .scaleAspectFill
        view.addSubview(backgroundImageView)
        backgroundImageView.edges(to: view)
        
        
//        
        
        let scrollView = UIScrollView()
        view.addSubview(scrollView)
        scrollView.edgesToSuperview()
        
       
        let contentView = UIView()
        scrollView.addSubview(contentView)
        contentView.edgesToSuperview()
        
     
        contentView.width(to: view)
        contentView.height( 1500) 
        
        
        contentView.addSubview(chooseAsign)
        contentView.addSubview(ariesButton)
        contentView.addSubview(taurusButton)
        contentView.addSubview(GeminiButton)
        contentView.addSubview(cancerButton)
        contentView.addSubview(leoButton)
        contentView.addSubview(virgoButton)
        contentView.addSubview(libraButton)
        contentView.addSubview(scorpioButton)
        contentView.addSubview(capricoenButton)
        contentView.addSubview(aquariusButton)
        contentView.addSubview(piscesButton)
        contentView.addSubview(sagittariusButton)
//        contentView.addSubview(nextButton)
        contentView.addSubview(labelQuestion)
        contentView.addSubview(labelDescript)
//
//        view.addSubview(chooseAsign)
//        view.addSubview(ariesButton)
//        view.addSubview(taurusButton)
//        view.addSubview(GeminiButton)
//        view.addSubview(cancerButton)
//        view.addSubview(leoButton)
//        view.addSubview(virgoButton)
//        view.addSubview(libraButton)
//        view.addSubview(scorpioButton)
//        view.addSubview(capricoenButton)
//        view.addSubview(aquariusButton)
//        view.addSubview(piscesButton)
//        view.addSubview(sagittariusButton)
//        view.addSubview(nextButton)
//        view.addSubview(labelQuestion)
//      
//        
//        view.addSubview(labelQuestion)
//        view.addSubview(labelDescript)
//        view.addSubview(chooseAsign)
//       
        labelQuestion.topToSuperview(offset:120)
        labelQuestion.text = "Choose your zodiac sign"
        labelQuestion.leadingToSuperview(offset:55)
        labelQuestion.trailingToSuperview(offset:55)
        labelQuestion.font = .boldSystemFont(ofSize: 35)
        labelQuestion.tintColor = .white
        labelQuestion.height(100)
        labelQuestion.backgroundColor = .clear

      
        labelDescript.topToBottom(of: labelQuestion,offset:5)
        labelDescript.text = "You can learn your zodiac sign while clicking this link https://www.wikihow.com/Know-Your-Horoscop"
        labelDescript.leadingToSuperview(offset:55)
        labelDescript.trailingToSuperview(offset:55)
        labelDescript.font = .systemFont(ofSize: 20)
        labelDescript.tintColor = .white
        labelDescript.height(150)
        labelDescript.backgroundColor = .clear
        
      
        chooseAsign.leadingToSuperview(offset: 55)
        chooseAsign.trailingToSuperview(offset: 55)
        chooseAsign.top(to: labelDescript,offset:160)
        chooseAsign.backgroundColor = .white
        chooseAsign.text = "Please choose a sign"
        chooseAsign.backgroundColor = .clear
        chooseAsign.font = .systemFont(ofSize: 20)
        chooseAsign.isHidden = true
        
        view.addSubview(ariesButton)
       
        ariesButton.leadingToSuperview(offset: 55)
        ariesButton.trailingToSuperview(offset: 55)
        ariesButton.topToBottom(of: chooseAsign,offset:15)
        ariesButton.backgroundColor = .white
        ariesButton.setTitle("  Aries ♈️", for: .normal)
        ariesButton.setTitleColor(.black, for: .normal)
        ariesButton.height(50)
        ariesButton.addTarget(self, action: #selector(ariesFunc), for: .touchUpInside)
        
        
        view.addSubview(taurusButton)
       
        taurusButton.leadingToSuperview(offset: 55)
        taurusButton.trailingToSuperview(offset: 55)
        taurusButton.topToBottom(of: ariesButton,offset:35)
        taurusButton.backgroundColor = .white
        taurusButton.setTitle("  Taurus ♉️", for: .normal)
        taurusButton.setTitleColor(.black, for: .normal)
        taurusButton.height(50)
        taurusButton.addTarget(self, action: #selector(taurusFunc), for: .touchUpInside)
       
        
        view.addSubview(GeminiButton)
     
        GeminiButton.leadingToSuperview(offset: 55)
        GeminiButton.trailingToSuperview(offset: 55)
        GeminiButton.topToBottom(of: taurusButton,offset:35)
        GeminiButton.backgroundColor = .white
        GeminiButton.setTitle("  Gemini ♊️", for: .normal)
        GeminiButton.setTitleColor(.black, for: .normal)
        GeminiButton.height(50)
        GeminiButton.addTarget(self, action: #selector(GeminiFunc), for: .touchUpInside)
        
        view.addSubview(cancerButton)
        
        cancerButton.leadingToSuperview(offset: 55)
        cancerButton.trailingToSuperview(offset: 55)
        cancerButton.topToBottom(of: GeminiButton,offset:35)
        cancerButton.backgroundColor = .white
        cancerButton.setTitle("  Cancer ♋️", for: .normal)
        cancerButton.setTitleColor(.black, for: .normal)
        cancerButton.height(50)
        cancerButton.addTarget(self, action: #selector(cancerFunc), for: .touchUpInside)
        
        view.addSubview(leoButton)
      
        leoButton.leadingToSuperview(offset: 55)
        leoButton.trailingToSuperview(offset: 55)
        leoButton.topToBottom(of: cancerButton,offset:35)
        leoButton.backgroundColor = .white
        leoButton.setTitle("  Leo ♌️", for: .normal)
        leoButton.setTitleColor(.black, for: .normal)
        leoButton.height(50)
        leoButton.addTarget(self, action: #selector(leoFunc), for: .touchUpInside)
        
        view.addSubview(virgoButton)
       
        virgoButton.leadingToSuperview(offset: 55)
        virgoButton.trailingToSuperview(offset: 55)
        virgoButton.topToBottom(of: leoButton,offset:35)
        virgoButton.backgroundColor = .white
        virgoButton.setTitle("  Virgo ♍️", for: .normal)
        virgoButton.setTitleColor(.black, for: .normal)
        virgoButton.height(50)
        virgoButton.addTarget(self, action: #selector(virgoFunc), for: .touchUpInside)
        
        
        view.addSubview(libraButton)
      
        libraButton.leadingToSuperview(offset: 55)
        libraButton.trailingToSuperview(offset: 55)
        libraButton.topToBottom(of: virgoButton,offset:35)
        libraButton.backgroundColor = .white
        libraButton.setTitle("  Virgo ♍️", for: .normal)
        libraButton.setTitleColor(.black, for: .normal)
        libraButton.height(50)
        libraButton.addTarget(self, action: #selector(librabutton), for: .touchUpInside)
        
        view.addSubview(scorpioButton)
      
        scorpioButton.leadingToSuperview(offset: 55)
        scorpioButton.trailingToSuperview(offset: 55)
        scorpioButton.topToBottom(of: libraButton,offset:35)
        scorpioButton.backgroundColor = .white
        scorpioButton.setTitle("  Scorpio ♏️", for: .normal)
        scorpioButton.setTitleColor(.black, for: .normal)
        scorpioButton.height(50)
        scorpioButton.addTarget(self, action: #selector(scorpioFunc), for: .touchUpInside)
        
        
        view.addSubview(sagittariusButton)
        sagittariusButton.leadingToSuperview(offset: 55)
        sagittariusButton.trailingToSuperview(offset: 55)
        sagittariusButton.topToBottom(of: scorpioButton,offset:35)
        sagittariusButton.backgroundColor = .white
        sagittariusButton.setTitle("  Scorpio ♏️", for: .normal)
        sagittariusButton.setTitleColor(.black, for: .normal)
        sagittariusButton.height(50)
        sagittariusButton.addTarget(self, action: #selector(sagittariusFunc), for: .touchUpInside)
        
        
        view.addSubview(capricoenButton)
      
        capricoenButton.leadingToSuperview(offset: 55)
        capricoenButton.trailingToSuperview(offset: 55)
        capricoenButton.topToBottom(of: sagittariusButton,offset:35)
        capricoenButton.backgroundColor = .white
        capricoenButton.setTitle("  Capricorn ♑️:", for: .normal)
        capricoenButton.setTitleColor(.black, for: .normal)
        capricoenButton.height(50)
        capricoenButton.addTarget(self, action: #selector(capricoenFunc), for: .touchUpInside)
        
        
        view.addSubview(aquariusButton)
        aquariusButton.leadingToSuperview(offset: 55)
        aquariusButton.trailingToSuperview(offset: 55)
        aquariusButton.topToBottom(of: capricoenButton,offset:35)
        aquariusButton.backgroundColor = .white
        aquariusButton.setTitle("  Aquarius ♒️:", for: .normal)
        aquariusButton.setTitleColor(.black, for: .normal)
        aquariusButton.height(50)
        aquariusButton.addTarget(self, action: #selector(aquariusFunc), for: .touchUpInside)
        
        view.addSubview(piscesButton)
        piscesButton.leadingToSuperview(offset: 55)
        piscesButton.trailingToSuperview(offset: 55)
        piscesButton.topToBottom(of: aquariusButton,offset:35)
        piscesButton.backgroundColor = .white
        piscesButton.setTitle("  Pisces ♓️", for: .normal)
        piscesButton.setTitleColor(.black, for: .normal)
        piscesButton.height(50)
        piscesButton.addTarget(self, action: #selector(piscesFunc), for: .touchUpInside)
       
//      
//         nextButton.bottomToSuperview(offset:-20)
//         nextButton.trailingToSuperview(offset:25)
//         nextButton.setImage(UIImage(named: "arrow"), for: .normal)
//         nextButton.height(30)
//         nextButton.width(30)
//         nextButton.addTarget(self, action: #selector(nextButtonNext), for: .touchUpInside)
//     
        
    }


    @objc func ariesFunc(){
       
        choosed = true
       resetButtonColors()
       chooseAsign.isHidden = true
   
        ariesButton.backgroundColor = .yellow.withAlphaComponent(0.7)
    }
    @objc func taurusFunc(){
     
        choosed = true
       resetButtonColors()
       chooseAsign.isHidden = true
   
        taurusButton.backgroundColor = .yellow.withAlphaComponent(0.7)
    }
    @objc func GeminiFunc(){
       
        choosed = true
       resetButtonColors()
       chooseAsign.isHidden = true
   
        GeminiButton.backgroundColor = .yellow.withAlphaComponent(0.7)
    }
    @objc func cancerFunc(){
     
        choosed = true
       resetButtonColors()
       chooseAsign.isHidden = true
   
        cancerButton.backgroundColor = .yellow.withAlphaComponent(0.7)
    }
    @objc func leoFunc(){
        
       
        choosed = true
       resetButtonColors()
       chooseAsign.isHidden = true
   
        leoButton.backgroundColor = .yellow.withAlphaComponent(0.7)
    }
    @objc func virgoFunc(){
      
       
    
        choosed = true
       resetButtonColors()
       chooseAsign.isHidden = true
   
        virgoButton.backgroundColor = .yellow.withAlphaComponent(0.7)
    }
    @objc func libraFunc(){
    
    
        choosed = true
       resetButtonColors()
       chooseAsign.isHidden = true
   
        libraButton.backgroundColor = .yellow.withAlphaComponent(0.7)
    }
    @objc func scorpioFunc(){
      
     
        choosed = true
       resetButtonColors()
       chooseAsign.isHidden = true
   
        scorpioButton.backgroundColor = .yellow.withAlphaComponent(0.7)
    }
    @objc func capricoenFunc(){
     
      
        choosed = true
       resetButtonColors()
       chooseAsign.isHidden = true
   
        capricoenButton.backgroundColor = .yellow.withAlphaComponent(0.7)
    }
    @objc func aquariusFunc(){
      
        choosed = true
       resetButtonColors()
       chooseAsign.isHidden = true
   
        aquariusButton.backgroundColor = .yellow.withAlphaComponent(0.7)
    }
    @objc func librabutton(){
      
        choosed = true
       resetButtonColors()
       chooseAsign.isHidden = true
   
        piscesButton.backgroundColor = .yellow.withAlphaComponent(0.7)
    }
    @objc func piscesFunc(){
      
        choosed = true
       resetButtonColors()
       chooseAsign.isHidden = true
   
        piscesButton.backgroundColor = .yellow.withAlphaComponent(0.7)
    }
    @objc func sagittariusFunc(){
      
        choosed = true
       resetButtonColors()
       chooseAsign.isHidden = true
   
        piscesButton.backgroundColor = .yellow.withAlphaComponent(0.7)
    }
    @objc func resetButtonColors() {
        ariesButton.backgroundColor = .white
        taurusButton.backgroundColor = .white
        GeminiButton.backgroundColor = .white
        cancerButton.backgroundColor = .white
        taurusButton.backgroundColor = .white
        leoButton.backgroundColor = .white
        virgoButton.backgroundColor = .white
        libraButton.backgroundColor = .white
        scorpioButton.backgroundColor = .white
        capricoenButton.backgroundColor = .white
        aquariusButton.backgroundColor = .white
        piscesButton.backgroundColor = .white
       
        
    }
    @objc func nextButtonNext() {
       
        if choosed == true{
          
            let nextViewController = DateorBFFVC()
            nextViewController.modalPresentationStyle = .fullScreen
            self.present(nextViewController, animated: true)
        } else {
            print("Lütfen bir düğme seçin.")
            chooseAsign.isHidden = false
            print( chooseAsign.isHidden)
            
            
        }
        
    }

}
