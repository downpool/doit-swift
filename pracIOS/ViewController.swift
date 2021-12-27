//
//  ViewController.swift
//  pracIOS
//
//  Created by 최동현 on 2021/12/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var hellow: UILabel!
    @IBOutlet var lblthis: UILabel!
    
    @IBOutlet var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func btnSend(_ sender: UIButton) {
        hellow.text = textfield.text!
    }
}
