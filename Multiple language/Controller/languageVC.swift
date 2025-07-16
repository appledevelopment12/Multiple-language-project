//
//  languageVC.swift
//  Multiple language
//
//  Created by Rohit on 16/07/25.
//

import UIKit

class languageVC: UIViewController {

        @IBOutlet weak var tableView: UITableView!
    var arr = ["English", "Hindi", "Bhojpuri", "Japanese", "Chinese", "French"]
        var selectedLanguageCode = ""
    
    
        override func viewDidLoad() {
            super.viewDidLoad()
            setupTableView()
        }
    @IBAction func SubmitActionbtn(_ sender: UIButton){
        
        guard !selectedLanguageCode.isEmpty else {
                // Optional: show alert to user
                let alert = UIAlertController(title: "Select Language", message: "Please select a language first.", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default))
                self.present(alert, animated: true)
                return
            }

            UserDefaults.standard.set(true, forKey: "isLanguageSelected")
            UserDefaults.standard.set(selectedLanguageCode, forKey: "AppLanguage")
            LocalizationManager.shared.currentLanguage = selectedLanguageCode

            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeMainVC")
            let nav = UINavigationController(rootViewController: vc)

            if let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
               let window = scene.windows.first {
                window.rootViewController = nav
                window.makeKeyAndVisible()
            }
    }
        private func setupTableView() {
            tableView.delegate = self
            tableView.dataSource = self
            tableView.separatorStyle = .none
            tableView.register(UINib(nibName: "tableViewCell", bundle: nil), forCellReuseIdentifier: "tableViewCell")
        }
    }

    // MARK: - UITableViewDelegate, UITableViewDataSource
    extension languageVC: UITableViewDelegate, UITableViewDataSource {

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return arr.count
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

            var cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell") as! tableViewCell
            cell.languageLabel.text = arr[indexPath.row]
              
            return cell
        }
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let selectedLanguage = arr[indexPath.row]
            var languageCode = "en"
            switch selectedLanguage {
                case "English": languageCode = "en"
                case "Hindi": languageCode = "hi"
                case "Bhojpuri": languageCode = "bho"
                case "Japanese": languageCode = "ja"
                case "Chinese": languageCode = "zh-Hans"
                case "French": languageCode = "fr"
                default: languageCode = "en"
            }

            self.selectedLanguageCode = languageCode

            
        }

    }
