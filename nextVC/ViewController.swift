//
//  ViewController.swift
//  nextVC
//
//  Created by Soo Jang on 2022/09/29.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func codeNextTapped(_ sender: UIButton) {
        let firstVC = FirstViewController()
        firstVC.someString = "Hello"
        firstVC.modalPresentationStyle = .fullScreen
        present(firstVC, animated: true)
    }
    
    
    @IBAction func storyboardWithCodeTapped(_ sender: Any) {
        guard let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondVC") as? SecondViewController else { return }
        secondVC.someString = "hello" 
        present(secondVC, animated: true)
        
    }
    
    @IBAction func storyboardWithSegueTapped(_ sender: Any) {
        performSegue(withIdentifier: "toThirdVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toThirdVC"
        {
            guard let segue = segue.destination as? ThirdViewController else { return }
            segue.someString = "hello"
            
        }
            
        if segue.identifier == "toFourthVC"
        {
            guard let segue = segue.destination as? FourthViewController else { return }
            segue.someString = "hello"
            
        }
        
    }
    
    
    
}

