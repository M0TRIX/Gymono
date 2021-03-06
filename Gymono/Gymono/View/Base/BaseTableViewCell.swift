//
//  BaseTableViewCell.swift
//  HomeTaskForPayback
//
//  Created by Ali Asadi on 1/17/1401 AP.
//

import UIKit

class BaseTableViewCell:UITableViewCell{
    
    var currentController:UIViewController?
    @IBOutlet weak var forwardImage:UIImageView!
    
    func bind(object:Any?){
 
        setListerners()
    }
    
    func setListerners(){
        let uITapGetsure = UITapGestureRecognizer(target: self, action: #selector(forwardAction))
        self.forwardImage.isUserInteractionEnabled = true
        self.forwardImage.addGestureRecognizer(uITapGetsure)
    }
    
    @objc func forwardAction(){}
    
    @objc func dismissKeyboard() {
        self.endEditing(true)
    }
    
}
