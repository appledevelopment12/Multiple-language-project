//
//  LocalizeManager.swift
//  Multiple language
//
//  Created by Rohit on 16/07/25.
//

import Foundation

class LocalizationManager {
    static let shared = LocalizationManager()
    
    var currentLanguage: String {
        get {
            return UserDefaults.standard.string(forKey: "AppLanguage") ?? Locale.current.languageCode ?? "en"
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "AppLanguage")
            Bundle.setLanguage(newValue)
        }
    }
}
