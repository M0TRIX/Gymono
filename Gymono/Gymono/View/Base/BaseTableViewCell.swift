//
//  BaseTableViewCell.swift
//  HomeTaskForPayback
//
//  Created by Ali Asadi on 1/17/1401 AP.
//

import UIKit

class BaseTableViewCell:UITableViewCell{
    
    var currentController:UIViewController?
    
    func bind(object:Any){
 
        setListerners()
    }
    
    func setListerners(){
        let viewTap = UITapGestureRecognizer(target: self, action: #selector(tapOnViewAction))
        self.isUserInteractionEnabled = true
        self.addGestureRecognizer(viewTap)
    }
    
    @objc func tapOnViewAction(){}
    
    @objc func dismissKeyboard() {
        self.endEditing(true)
    }
    
}
