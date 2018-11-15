//
//  SecondViewController.swift
//  Delegate3View
//
//  Created by admin on 11/8/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

protocol FirstViewControllerProtocol {
    func updateUI(text: String?)
}

class SecondViewController: UIViewController,SecondViewControllerProtocol {
    func updateUI(text: String) {
        delegate?.updateUI(text: text)
    }
    
    
    @IBOutlet weak var textField: UITextField!
    var delegate: FirstViewControllerProtocol?
    var data: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if data != nil {
            textField.text = data
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let thirdVC = segue.destination as? ThirdViewController {
            thirdVC.delegate = self
            thirdVC.thirdData = textField.text
            
            
        }
    }

}
