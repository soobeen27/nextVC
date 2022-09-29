//
//  FirstViewController.swift
//  nextVC
//
//  Created by Soo Jang on 2022/09/29.
//

import UIKit

class FirstViewController: UIViewController {

    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = someString
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 20)
        
        return label
    }()
    
    private lazy var backButton: UIButton = {
        let button = UIButton()
        button.setTitle("back", for: .normal)
        button.tintColor = .white
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        
        return button
        
    }()
    
    var someString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeUI()

        // Do any additional setup after loading the view.
    }
    
    func makeUI() {
        view.backgroundColor = .gray
        view.addSubview(label)
        view.addSubview(backButton)
        label.translatesAutoresizingMaskIntoConstraints = false
        backButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            backButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40),
            backButton.widthAnchor.constraint(equalToConstant: 70),
            backButton.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        
    }
    

    
    @objc func backButtonTapped() {
        dismiss(animated: true, completion: nil)
    }

}
