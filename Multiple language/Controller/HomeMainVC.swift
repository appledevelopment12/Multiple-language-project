//
//  HomeMainVC.swift
//  Multiple language
//
//  Created by Rohit on 16/07/25.
//

import UIKit

class HomeMainVC: UIViewController {
    
    @IBOutlet weak var bannerImg: UIImageView!
    
    
        override func viewDidLoad() {
            super.viewDidLoad()
//            let currentLang = LocalizationManager.shared.currentLanguage  // e.g. "ja"
//                let imageName = "banner_\(currentLang)"                       // e.g. "banner_ja"
//                bannerImg.image = UIImage(named: imageName)
            // Do any additional setup after loading the view.
            
//            banner_en
//
//            banner_hi
//
//            banner_ja
//
//            banner_fr
//
//            banner_zh
        }
        @IBAction func Chatbtn(_ sender: UIButton){
            let vc = storyboard?.instantiateViewController(withIdentifier: "ChatVC") as! ChatVC
            self.navigationController?.pushViewController(vc, animated: true)
        }
        @IBAction func Historybtn(_ sender: UIButton){
            let vc = storyboard?.instantiateViewController(withIdentifier: "HitoryVC") as! HitoryVC
            self.navigationController?.pushViewController(vc, animated: true)
        }
        @IBAction func Rechargebtn(_ sender: UIButton){
            let vc = storyboard?.instantiateViewController(withIdentifier: "RechargeVC") as! RechargeVC
            self.navigationController?.pushViewController(vc, animated: true)
        }
        @IBAction func Walletbtn(_ sender: UIButton){
            let vc = storyboard?.instantiateViewController(withIdentifier: "WalletScreenVC") as! WalletScreenVC
            self.navigationController?.pushViewController(vc, animated: true)
        }
        @IBAction func languageChange(_ sender: UIButton){
           let vc = storyboard?.instantiateViewController(withIdentifier: "languageVC") as! languageVC
           self.navigationController?.pushViewController(vc, animated: true)
        }
       
    }
