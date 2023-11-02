//
//  HomeVC.swift
//  TwinkleApp
//
//  Created by Onur Akman on 28.10.2023.
//

import UIKit
import TinyConstraints

class ViewController: UIViewController {
    
    
    let imageviewForLogo : UIImageView = {
        let cons = UIImageView()
        cons.translatesAutoresizingMaskIntoConstraints = false
        cons.layer.cornerRadius = 14
        return cons
    }()
    
    let faceImage : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let nameLabel : UILabel = {
        let name = UILabel()
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
    
    let ageLabel : UILabel = {
        let age = UILabel()
        age.translatesAutoresizingMaskIntoConstraints = false
        return age
    }()
    
    let jobLabel : UILabel = {
        let job = UILabel()
        job.translatesAutoresizingMaskIntoConstraints = false
        return job
    }()
    
    let schoolLabel : UILabel = {
        let school = UILabel()
        school.translatesAutoresizingMaskIntoConstraints = false
        return school
    }()
    
    let slikeButton : UIButton = {
        let like = UIButton()
        like.translatesAutoresizingMaskIntoConstraints = false
       // like.layer.cornerRadius = 14
        return like
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImageView = UIImageView()
        backgroundImageView.image = UIImage(named: "mainImage")
        backgroundImageView.contentMode = .scaleAspectFill
        view.addSubview(backgroundImageView)
        backgroundImageView.edges(to: view)
        
        view.addSubview(faceImage)
        faceImage.centerXToSuperview()
        faceImage.topToSuperview(offset:90)
        faceImage.leadingToSuperview(offset: 10)
        faceImage.height(660)
        faceImage.layer.cornerRadius = 17
        faceImage.backgroundColor = .systemOrange
        view.backgroundColor = .white
        
        view.addSubview(imageviewForLogo)
        imageviewForLogo.topToSuperview(offset: 47)
        imageviewForLogo.centerXToSuperview()
        imageviewForLogo.image = UIImage(named: "TwinkleLogo")
        imageviewForLogo.width(100)
        imageviewForLogo.height(45.61)
        
        view.addSubview(nameLabel)
        nameLabel.leading(to: faceImage, offset:17)
        nameLabel.bottom(to: faceImage,offset: -80)
        nameLabel.textColor = .white
        nameLabel.text = "Luffy, "
        nameLabel.font = .systemFont(ofSize: 32)
        let tap = UITapGestureRecognizer(target: self, action: #selector(ViewController.tapFunction))
        nameLabel.isUserInteractionEnabled = true
        nameLabel.addGestureRecognizer(tap)
        
        view.addSubview(ageLabel)
        ageLabel.leading(to: nameLabel, offset:83)
        ageLabel.bottom(to: faceImage,offset: -80)
        ageLabel.textColor = .white
        ageLabel.text = "20 "
        ageLabel.font = .systemFont(ofSize: 32)
        
        let jobImageView = UIImageView()
        view.addSubview(jobImageView)
        jobImageView.image = UIImage(systemName: "briefcase")
        jobImageView.leading(to: faceImage, offset:17)
        jobImageView.top(to: nameLabel,offset: 40)
        jobImageView.height(21.12)
        jobImageView.width(22)
        jobImageView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(jobLabel)
        jobLabel.leading(to: jobImageView, offset: 27)
        jobLabel.top(to: nameLabel,offset: 40)
        jobLabel.text = "Pirate"
        jobLabel.textColor = .white
        
        let schoolImageView = UIImageView()
        view.addSubview(schoolImageView)
        schoolImageView.image = UIImage(systemName: "graduationcap")
        schoolImageView.leading(to: faceImage, offset:17)
        schoolImageView.top(to: nameLabel,offset: 67)
        schoolImageView.height(21.12)
        schoolImageView.width(22)
        schoolImageView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(schoolLabel)
        schoolLabel.leading(to: schoolImageView, offset: 27)
        schoolLabel.top(to: nameLabel,offset: 67)
        schoolLabel.text = "None"
        schoolLabel.textColor = .white
        
        view.addSubview(slikeButton)
        slikeButton.leading(to: faceImage, offset: 284)
        slikeButton.bottom(to: faceImage, offset: -26)
        let largeConfig = UIImage.SymbolConfiguration(pointSize: 28)
        let largeSymbol = UIImage(systemName: "star.fill", withConfiguration: largeConfig)
        slikeButton.setImage(largeSymbol, for: .normal)
        slikeButton.height(75)
        slikeButton.width(75)
        slikeButton.layer.cornerRadius = 37.5
        slikeButton.clipsToBounds = true
        slikeButton.tintColor = .systemYellow
        slikeButton.backgroundColor = .white
        
        
        
        
        
    }
    @objc func tapFunction(sender:UITapGestureRecognizer) {
            print("tap working")
        }
}
