//
//  ThirdViewController.swift
//  Delegate3View
//
//  Created by admin on 11/15/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

protocol SecondViewControllerProtocol {
    func updateUI(text: String)
}

class ThirdViewController: UIViewController {

    var thirdData: String?
    @IBOutlet weak var thirdText: UITextField!
    
    
    
    var delegate: SecondViewControllerProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        if thirdData != nil {
            thirdText.text = thirdData
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func thirdButton(_ sender: UIButton) {
        delegate?.updateUI(text: thirdText.text!)
        navigationController?.popToRootViewController(animated: true)
    }


}
