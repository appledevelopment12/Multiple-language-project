//
//  ChatVC.swift
//  Multiple language
//
//  Created by Rohit on 16/07/25.
//

import UIKit

class ChatVC: UIViewController {

    @IBOutlet weak var chatLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        chatLabel.text = NSLocalizedString("Chat", comment: "")
    }
    


}
