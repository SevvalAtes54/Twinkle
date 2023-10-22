//
//  ChooseGenderVC.swift
//  TwinkleApp
//
//  Created by Macbook Air on 23.10.2023.
//

import UIKit
import TinyConstraints
class ChooseGenderVC: UIViewController {
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
        
        
        labelQuestion.topToSuperview(offset:120)
        labelQuestion.text = "What is your gender"
        labelQuestion.leadingToSuperview(offset:55)
        labelQuestion.trailingToSuperview(offset:55)
        labelQuestion.font = .boldSystemFont(ofSize: 35)
        labelQuestion.tintColor = .white
        labelQuestion.width(140)
        labelQuestion.height(80)
        labelQuestion.backgroundColor = .clear
        
        
        labelDescript.topToBottom(of: labelQuestion,offset:30)
        labelDescript.text = "gender menaing gender gender gender genderrrrrr"
        labelDescript.leadingToSuperview(offset:55)
        labelDescript.trailingToSuperview(offset:55)
        labelDescript.font = .systemFont(ofSize: 20)
        labelDescript.tintColor = .white
        labelDescript.width(150)
        labelDescript.height(80)
        labelDescript.backgroundColor = .clear
        
        womanButton.leadingToSuperview(offset: 55)
        womanButton.trailingToSuperview(offset: 55)
        womanButton.topToBottom(of: labelDescript,offset:35)
        womanButton.backgroundColor = .white
        womanButton.setTitle("  Woman", for: .normal)
        womanButton.setTitleColor(.black, for: .normal)
        womanButton.height(50)
        womanButton.addTarget(self, action: #selector(woman), for: .touchUpInside)
        
        manButton.leadingToSuperview(offset: 55)
        manButton.trailingToSuperview(offset: 55)
        manButton.topToBottom(of: womanButton,offset:35)
        manButton.backgroundColor = .white
        manButton.setTitle("  Man", for: .normal)
        manButton.setTitleColor(.black, for: .normal)
        manButton.height(50)
        manButton.addTarget(self, action: #selector(mann), for: .touchUpInside)
        
        nonbinaryButton.leadingToSuperview(offset: 55)
        nonbinaryButton.trailingToSuperview(offset: 55)
        nonbinaryButton.topToBottom(of: manButton,offset:35)
        nonbinaryButton.backgroundColor = .white
        nonbinaryButton.setTitle("  Non Binary", for: .normal)
        nonbinaryButton.setTitleColor(.black, for: .normal)
        nonbinaryButton.height(50)
        nonbinaryButton.addTarget(self, action: #selector(nonbinary), for: .touchUpInside)
        
        
        nextButton.bottomToSuperview(offset:-30)
        nextButton.trailingToSuperview(offset:30)
        nextButton.setImage(UIImage(systemName: "arrowshape.right"), for: .normal)
        nextButton.height(30)
        nextButton.width(30)
        
    }
    @objc func woman (){
        print("woamnn")
    }
   
    @objc func mann (){
        print("mann")
    }
    @objc func nonbinary (){
        print("nonbinary")
    }
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
