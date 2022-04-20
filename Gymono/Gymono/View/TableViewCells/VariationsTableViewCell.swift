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
    
    var varId:Int?
    
    override func bind(object: Any?) {
        super.bind(object: nil)
        varId = object as? Int
        variationsTitle.text = "\(object ?? 0)"
    }
    
    override func setListerners() {
        super.setListerners()
    }
    
    override func forwardAction() {
        let vc = VariationDetialViewController.createInstance()
        vc.varId = varId
        vc.variationViewModel = VariationViewModel(context: vc)
        vc.modalPresentationStyle = .fullScreen
        self.currentController!.navigationController!.pushViewController(vc, animated: true)
    }
    
}
