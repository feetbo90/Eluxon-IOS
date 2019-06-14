//
//  ViewController.swift
//  Eluxon
//
//  Created by Muhammad Iqbal Pradipta on 10/06/19.
//  Copyright © 2019 Muhammad Iqbal Pradipta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var onOffLabel: UILabel!
    
    var switchStatus : SwitchStatus = .off
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBOutlet weak var outletToggleBtn: UIButton!
    
    @IBAction func toggleBtn(_ sender: Any) {
        switchStatus.Toggle()
        if switchStatus == .off {
            outletToggleBtn.setImage(UIImage(named: "offBtn")!, for: .normal)
            view.backgroundColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
            onOffLabel.text = "OFF"
            onOffLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        } else {
            outletToggleBtn.setImage(UIImage(named: "onBtn")!, for: .normal)
            view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            onOffLabel.text = "ON"
            onOffLabel.textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
            
        }
    }
    
}

