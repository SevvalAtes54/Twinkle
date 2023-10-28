//
//  EducationVC.swift
//  TwinkleApp
//
//  Created by Macbook Air on 23.10.2023.
//

import UIKit
import TinyConstraints
class EducationVC: UIViewController {
    var choosed = false
    let chooseAsign : UILabel = {
        let cons = UILabel()
        cons.translatesAutoresizingMaskIntoConstraints = false
//        cons.layer.cornerRadius = 14
        return cons
    }()
    
    let labelQuestion : UILabel = {
        let cons = UILabel()
        cons.translatesAutoresizingMaskIntoConstraints = false
      
        return cons
    }()
    let labelDescript : UILabel = {
        let cons = UILabel()
        cons.translatesAutoresizingMaskIntoConstraints = false
     
        return cons
    }()
    let primarySchool : UIButton = {
        let cons = UIButton()
        cons.translatesAutoresizingMaskIntoConstraints = false
        cons.layer.cornerRadius = 14
        return cons
    }()
    let highSchool : UIButton = {
        let cons = UIButton()
        cons.translatesAutoresizingMaskIntoConstraints = false
        cons.layer.cornerRadius = 14
        return cons
    }()
    let tradeSchool : UIButton = {
        let cons = UIButton()
        cons.layer.cornerRadius = 14
        cons.translatesAutoresizingMaskIntoConstraints = false
      
        return cons
    }()
    let inCollege : UIButton = {
        let cons = UIButton()
        cons.translatesAutoresizingMaskIntoConstraints = false
        cons.layer.cornerRadius = 14
        return cons
    }()
    let undergraduate : UIButton = {
        let cons = UIButton()
        cons.translatesAutoresizingMaskIntoConstraints = false
        cons.layer.cornerRadius = 14
        return cons
    }()
    let graduate : UIButton = {
        let cons = UIButton()
        cons.translatesAutoresizingMaskIntoConstraints = false
        cons.layer.cornerRadius = 14
        return cons
    }()
    let bachelorsDegree : UIButton = {
        let cons = UIButton()
        cons.translatesAutoresizingMaskIntoConstraints = false
        cons.layer.cornerRadius = 14
        return cons
    }()
    let mastersDegree : UIButton = {
        let cons = UIButton()
        cons.translatesAutoresizingMaskIntoConstraints = false
        cons.layer.cornerRadius = 14
        return cons
    }()
    let doctoralDegree : UIButton = {
        let cons = UIButton()
        cons.translatesAutoresizingMaskIntoConstraints = false
        cons.layer.cornerRadius = 14
        return cons
    }()
    let phD : UIButton = {
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        let backgroundImageView = UIImageView()
        backgroundImageView.image = UIImage(named: "mainImage")
        backgroundImageView.contentMode = .scaleAspectFill
        view.addSubview(backgroundImageView)
        backgroundImageView.edges(to: view)

        // İçeriğinizi contentView'e ekleyin

//
             let scrollView = UIScrollView()
             view.addSubview(scrollView)
             scrollView.edgesToSuperview() // ScrollView'ı view'e kenetle
             
             // İçerik görünümünü oluştur
             let contentView = UIView()
             scrollView.addSubview(contentView)
             contentView.edgesToSuperview() // İçerik görünümünü scrollView'a kenetle
             
             // İçerik görünümüne uygun bir boyut ayarla
             contentView.width(to: view)
             contentView.height(1000) // İçerik görünümünün yüksekliğini gerektiği gibi ayarlayın
             
        
        contentView.addSubview(primarySchool)
        contentView.addSubview(highSchool)
        contentView.addSubview(tradeSchool)
        contentView.addSubview(inCollege)
        contentView.addSubview(undergraduate)
        contentView.addSubview(graduate)
        contentView.addSubview(bachelorsDegree)
        contentView.addSubview(mastersDegree)
        contentView.addSubview(phD)
        contentView.addSubview(nextButton)
        contentView.addSubview(labelQuestion)
        contentView.addSubview(labelDescript)
        contentView.addSubview(chooseAsign)
              
        
        labelQuestion.topToSuperview(offset: 120)
        labelQuestion.text = "What is your\n education"
        labelQuestion.leadingToSuperview(offset: 55)
        labelQuestion.trailingToSuperview()
        labelQuestion.font = .boldSystemFont(ofSize: 35)
        labelQuestion.tintColor = .white
        labelQuestion.width(200)
        labelQuestion.height(80)
        labelQuestion.backgroundColor = .clear
   
        labelDescript.top(to: labelQuestion,offset:100)
        labelDescript.text = "Choose your education type"
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
        
        
        
        view.addSubview(primarySchool)
        primarySchool.leadingToSuperview(offset: 55)
        primarySchool.trailingToSuperview(offset: 55)
        primarySchool.top(to:  labelDescript,offset:120)
        primarySchool.backgroundColor = .white
        primarySchool.setTitle("  Primary School", for: .normal)
        primarySchool.setTitleColor(.black, for: .normal)
        primarySchool.height(50)
        primarySchool.addTarget(self, action: #selector(primarySchooll), for: .touchUpInside)
        
        
        view.addSubview(highSchool)
        highSchool.leadingToSuperview(offset: 55)
        highSchool.trailingToSuperview(offset: 55)
        highSchool.top(to:  primarySchool,offset:70)
        highSchool.backgroundColor = .white
        highSchool.setTitle("  High School", for: .normal)
        highSchool.setTitleColor(.black, for: .normal)
        highSchool.height(50)
        highSchool.addTarget(self, action: #selector(highSchooll), for: .touchUpInside)
       
        
        view.addSubview(tradeSchool)
        tradeSchool.leadingToSuperview(offset: 55)
        tradeSchool.trailingToSuperview(offset: 55)
        tradeSchool.top(to:  highSchool,offset:70)
       // tradeSchool.topToBottom(of: highSchool,offset:35)
        tradeSchool.backgroundColor = .white
        tradeSchool.setTitle("  Trade School", for: .normal)
        tradeSchool.setTitleColor(.black, for: .normal)
        tradeSchool.height(50)
        tradeSchool.addTarget(self, action: #selector(tradeSchooll), for: .touchUpInside)
        
        view.addSubview(inCollege)
        inCollege.leadingToSuperview(offset: 55)
        inCollege.trailingToSuperview(offset: 55)
        inCollege.top(to:  tradeSchool,offset:70)
        inCollege.backgroundColor = .white
        inCollege.setTitle("  in College", for: .normal)
        inCollege.setTitleColor(.black, for: .normal)
        inCollege.height(50)
        inCollege.addTarget(self, action: #selector(inCollegee), for: .touchUpInside)
        
        view.addSubview(undergraduate)
        undergraduate.leadingToSuperview(offset: 55)
        undergraduate.trailingToSuperview(offset: 55)
        undergraduate.top(to:  inCollege,offset:70)
        undergraduate.backgroundColor = .white
        undergraduate.setTitle("  Undergraduate", for: .normal)
        undergraduate.setTitleColor(.black, for: .normal)
        undergraduate.height(50)
        undergraduate.addTarget(self, action: #selector(undergraduatee), for: .touchUpInside)
        
        view.addSubview(graduate)
        graduate.leadingToSuperview(offset: 55)
        graduate.trailingToSuperview(offset: 55)
        graduate.top(to:  undergraduate,offset:70)
        graduate.backgroundColor = .white
        graduate.setTitle("  Graduate", for: .normal)
        graduate.setTitleColor(.black, for: .normal)
        graduate.height(50)
        graduate.addTarget(self, action: #selector(graduatee), for: .touchUpInside)
        
        view.addSubview(bachelorsDegree)
        bachelorsDegree.leadingToSuperview(offset: 55)
        bachelorsDegree.trailingToSuperview(offset: 55)
        bachelorsDegree.top(to:  graduate,offset:70)
        bachelorsDegree.backgroundColor = .white
        bachelorsDegree.setTitle("  Bachelor's Degree", for: .normal)
        bachelorsDegree.setTitleColor(.black, for: .normal)
        bachelorsDegree.height(50)
        bachelorsDegree.addTarget(self, action: #selector(bachelorsDegreee), for: .touchUpInside)
        
        view.addSubview(mastersDegree)
        mastersDegree.leadingToSuperview(offset: 55)
        mastersDegree.trailingToSuperview(offset: 55)
        mastersDegree.top(to:  bachelorsDegree,offset:70)
        mastersDegree.backgroundColor = .white
        mastersDegree.setTitle("  Master's Degree", for: .normal)
        mastersDegree.setTitleColor(.black, for: .normal)
        mastersDegree.height(50)
        mastersDegree.addTarget(self, action: #selector(mastersDegreee), for: .touchUpInside)
        
        
        view.addSubview(phD)
        phD.leadingToSuperview(offset: 55)
        phD.trailingToSuperview(offset: 55)
        phD.top(to:  mastersDegree,offset:70)
        phD.backgroundColor = .white
        phD.setTitle("  phD", for: .normal)
        phD.setTitleColor(.black, for: .normal)
        phD.height(50)
        phD.addTarget(self, action: #selector(phDd), for: .touchUpInside)
        
        
        view.addSubview(nextButton)
        nextButton.bottomToSuperview(offset:-30)
        nextButton.trailingToSuperview(offset:30)
        nextButton.setImage(UIImage(systemName: "arrowshape.right"), for: .normal)
        nextButton.height(30)
        nextButton.width(30)
        nextButton.addTarget(self, action: #selector(nextButtonNext), for: .touchUpInside)
 
     
        
    }

    @objc func primarySchooll(){
        choosed = true
       resetButtonColors()
       chooseAsign.isHidden = true
       primarySchool.backgroundColor = .yellow.withAlphaComponent(0.7)
    }
    @objc func highSchooll(){
        choosed = true
       resetButtonColors()
       chooseAsign.isHidden = true
       highSchool.backgroundColor = .yellow.withAlphaComponent(0.7)
    }
    @objc func tradeSchooll(){
        choosed = true
       resetButtonColors()
       chooseAsign.isHidden = true
       tradeSchool.backgroundColor = .yellow.withAlphaComponent(0.7)
    }
    @objc func inCollegee(){
        choosed = true
       resetButtonColors()
       chooseAsign.isHidden = true
       inCollege.backgroundColor = .yellow.withAlphaComponent(0.7)
    }
    @objc func undergraduatee(){
        choosed = true
       resetButtonColors()
       chooseAsign.isHidden = true
       undergraduate.backgroundColor = .yellow.withAlphaComponent(0.7)
    }
    @objc func graduatee(){
        print("4")
        choosed = true
       resetButtonColors()
       chooseAsign.isHidden = true
       graduate.backgroundColor = .yellow.withAlphaComponent(0.7)
    }
    @objc func bachelorsDegreee(){
        print("7")
        choosed = true
       resetButtonColors()
       chooseAsign.isHidden = true
       bachelorsDegree.backgroundColor = .yellow.withAlphaComponent(0.7)
    }
    @objc func mastersDegreee(){
        print("8")
        choosed = true
       resetButtonColors()
       chooseAsign.isHidden = true
       mastersDegree.backgroundColor = .yellow.withAlphaComponent(0.7)
    }
    @objc func phDd(){
        print("9")
        choosed = true
       resetButtonColors()
       chooseAsign.isHidden = true
       phD.backgroundColor = .yellow.withAlphaComponent(0.7)
    }
    
      @objc func resetButtonColors() {
          phD.backgroundColor = .white
          mastersDegree.backgroundColor = .white
          bachelorsDegree.backgroundColor = .white
          graduate.backgroundColor = .white
          undergraduate.backgroundColor = .white
          inCollege.backgroundColor = .white
          tradeSchool.backgroundColor = .white
          highSchool.backgroundColor = .white
          primarySchool.backgroundColor = .white
          
      }
    @objc func nextButtonNext() {
      
        if choosed == true{
          
            let nextViewController = ZodiacSignVC()
            nextViewController.modalPresentationStyle = .fullScreen
            self.present(nextViewController, animated: true)
        } else {
            print("Lütfen bir düğme seçin.")
            chooseAsign.isHidden = false
            print( chooseAsign.isHidden)
            
            
        }
        
    }
    
}
