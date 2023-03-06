//
//  ViewController.swift
//  lesson2
//
//  Created by Andrii Zozulych on 06.03.2023.
//

import UIKit

class ViewController: UIViewController {
    let firstButton = UIButton()
    let secondButton = UIButton()
    let thirdButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupFirstButton()
        setupSecondButton()
        setupThirdButton()
    }
    
    func setupFirstButton() {
        view.addSubview(firstButton)
        firstButton.translatesAutoresizingMaskIntoConstraints = false
        firstButton.layer.cornerRadius = 10
        firstButton.addTarget(self, action: #selector(firsButtonPushed), for: .touchUpInside)
        
        var config = UIButton.Configuration.filled()
        config.buttonSize = .small
        config.title = "What's it?"
        config.image = UIImage(systemName: "chevron.right")
        config.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 14, bottom: 10, trailing: 14)
        config.imagePlacement = .trailing
        config.imagePadding = 8
        config.baseBackgroundColor = UIColor(named: "defaultBlue")
        firstButton.configuration = config
        
        NSLayoutConstraint.activate([
            firstButton.heightAnchor.constraint(equalToConstant: 50),
            firstButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            firstButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)])
    }
    
    func setupSecondButton() {
        view.addSubview(secondButton)
        secondButton.translatesAutoresizingMaskIntoConstraints = false
        secondButton.layer.cornerRadius = 10
        secondButton.addTarget(self, action: #selector(secondButtonPushed), for: .touchUpInside)
        
        var config = UIButton.Configuration.filled()
        config.buttonSize = .small
        config.title = "It's UiKit Marathon (Otsovskii pinok)"
        config.image = UIImage(systemName: "star.fill")
        config.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 14, bottom: 10, trailing: 14)
        config.imagePlacement = .trailing
        config.imagePadding = 8
        config.baseBackgroundColor = UIColor(named: "defaultBlue")
        secondButton.configuration = config
        
        NSLayoutConstraint.activate([
            secondButton.heightAnchor.constraint(equalToConstant: 50),
            secondButton.topAnchor.constraint(equalTo: firstButton.bottomAnchor, constant: 25),
            secondButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)])
    }
    
    func setupThirdButton() {
        view.addSubview(thirdButton)
        thirdButton.translatesAutoresizingMaskIntoConstraints = false
        thirdButton.layer.cornerRadius = 10
        thirdButton.addTarget(self, action: #selector(thirdButtonPushed), for: .touchUpInside)
        
        var config = UIButton.Configuration.filled()
        config.buttonSize = .small
        
        config.title = "by Ivan Vorobei (don't click)"
        config.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 14, bottom: 10, trailing: 14)
        config.imagePlacement = .trailing
        config.imagePadding = 8
        config.image = UIImage(systemName: "chevron.right")
        config.baseBackgroundColor = UIColor(named: "defaultBlue")
        thirdButton.configuration = config
        
        NSLayoutConstraint.activate([
            thirdButton.heightAnchor.constraint(equalToConstant: 50),
            thirdButton.topAnchor.constraint(equalTo: secondButton.bottomAnchor, constant: 25),
            thirdButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)])
    }
    
    @IBAction func firsButtonPushed() {}
    
    @IBAction func secondButtonPushed() {}
    
    @IBAction func thirdButtonPushed() {
        guard let controller = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") else { return }
        self.present(controller, animated: true)
        
    }
}


