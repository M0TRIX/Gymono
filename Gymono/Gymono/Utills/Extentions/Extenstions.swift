//
//  Extenstions.swift
//  HomeTaskForPayback
//
//  Created by Ali Asadi on 1/18/1401 AP.
//

import UIKit

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

extension String{
    var stringFormater:String{
        return (self.replacingOccurrences(of: "</p>", with: "").replacingOccurrences(of: "<p>", with: "").replacingOccurrences(of: "<li>", with: "").replacingOccurrences(of: "</li>", with: "").replacingOccurrences(of: "</ul>", with: "").replacingOccurrences(of: "<ul>", with: ""))
    }
}
