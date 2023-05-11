//
//  UIView+Extension.swift
//  VoiceOverLabel-Accessibility-Demo
//
//  Created by Daniyal Yousuf on 2023-05-11.
//

import UIKit

extension UIView {
    func enableAccessibility(with hint: String? = nil) {
        isAccessibilityElement = true
        accessibilityHint = hint
    }
}

extension UITableViewCell {
   static var Id: String {
       return String(describing: self)
    }
}
