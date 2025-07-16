//
//  Extension.swift
//  Multiple language
//
//  Created by Rohit on 16/07/25.
//

import Foundation
import UIKit
extension Bundle {
    private static var bundleKey: UInt8 = 0
    
    static func setLanguage(_ language: String) {
        defer {
            object_setClass(Bundle.main, PrivateBundle.self)
        }

        objc_setAssociatedObject(Bundle.main, &bundleKey, Bundle(path: Bundle.main.path(forResource: language, ofType: "lproj") ?? ""), .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
    }
    
    private class PrivateBundle: Bundle {
        override func localizedString(forKey key: String, value: String?, table tableName: String?) -> String {
            if let bundle = objc_getAssociatedObject(self, &Bundle.PrivateBundle.bundleKey) as? Bundle {
                return bundle.localizedString(forKey: key, value: value, table: tableName)
            }
            return super.localizedString(forKey: key, value: value, table: tableName)
        }
    }
}
extension UILabel {
    @IBInspectable var localizedKey: String? {
        get { return nil }
        set {
            text = newValue?.localized
        }
    }
}

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
