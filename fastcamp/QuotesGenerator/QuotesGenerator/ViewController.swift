//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by 최동현 on 2022/01/29.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let quotes = [
        Quote(contents: "죽음을 두려워하는 나머지 삶을 시작조차 못하는 사람이 많다.", name: "벤다이크"),
        Quote(contents: "비용 명언", name: "비용"),
        Quote(contents: "암브로스 빌 명언", name: "암브로스 빌"),
        Quote(contents: "아인슈타인 명언", name: "아인슈타인"),
        Quote(contents: "니체 명언", name: "니체")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapQuoteGeneratorButton(_ sender: Any) {
        let random = Int(arc4random_uniform(5))
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.contents
    }
    
}
