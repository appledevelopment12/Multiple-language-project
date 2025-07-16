//
//  WalletScreenVC.swift
//  Multiple language
//
//  Created by Rohit on 16/07/25.
//

import UIKit

class WalletScreenVC: UIViewController {

    @IBOutlet weak var walletLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        walletLabel.text = NSLocalizedString("Wallet", comment: "")
    }
    
}
