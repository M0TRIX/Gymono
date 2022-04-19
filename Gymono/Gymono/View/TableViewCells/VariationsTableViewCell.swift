//
//  VariationsTableViewCell.swift
//  Gymono
//
//  Created by Ali Asadi on 1/30/1401 AP.
//

import Foundation
import UIKit

class VariationsTableViewCell:BaseTableViewCell{
    
   @IBOutlet weak var variationsTitle:UILabel!
    
    var content:ExercisesInfo?
    
    override func bind(object: Any?) {
        super.bind(object: nil)
        content = object as? ExercisesInfo
        variationsTitle.text = content?.name
    }
    
    override func setListerners() {
        super.setListerners()
    }
    
    override func forwardAction() {
        let vc = VariationDetialViewController.createInstance()
        vc.exercisesInfoList = content
        vc.modalPresentationStyle = .fullScreen
        self.currentController!.navigationController!.pushViewController(vc, animated: true)
    }
    
}
