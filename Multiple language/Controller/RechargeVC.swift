//
//  RechargeVC.swift
//  Multiple language
//
//  Created by Rohit on 16/07/25.
//

import UIKit

class RechargeVC: UIViewController {
    
    @IBOutlet weak var  rechargeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rechargeLabel.text = NSLocalizedString("Recharge", comment: "")
    }
    
}
