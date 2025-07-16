//
//  HitoryVC.swift
//  Multiple language
//
//  Created by Rohit on 16/07/25.
//

import UIKit

class HitoryVC: UIViewController {

    @IBOutlet weak var historyLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        historyLabel.text = NSLocalizedString("History", comment: "")

    }
    
}
