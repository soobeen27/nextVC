//
//  SecondViewController.swift
//  nextVC
//
//  Created by Soo Jang on 2022/09/29.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var mainLabel: UILabel!
    
    var someString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = someString

        // Do any additional setup after loading the view.
    }
    

    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
