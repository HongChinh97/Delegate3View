//
//  ViewController.swift
//  Delegate3View
//
//  Created by admin on 11/8/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit
// 3
class FirstViewController: UIViewController, FirstViewControllerProtocol {
    
    @IBOutlet weak var firstText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? SecondViewController{
            destinationVC.delegate = self
            destinationVC.data = firstText.text
        }
        
    }
    // 3
    func updateUI(text: String?) {
        firstText.text = text
    }


}

//class RefactorFirstVC: UIViewController, FirstViewControllerProtocol {
//    @IBOutlet weak var secondText: UITextField!
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//    }
//    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let destinationVC = segue.destination as? SecondViewController
//        // 4
//        destinationVC?.delegate = self
//    }
//    // 3
//    func updateUI(text: String?) {
//        firstText.text = text
//    }
//}

