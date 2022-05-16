//
//  ViewController.swift
//  hellolab
//
//  Created by 최동현 on 2022/05/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var uiTitle: UILabel!
    
    @IBAction func sayHello(_ sender: Any) {
        
        self.uiTitle.text = "Hello world!"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

