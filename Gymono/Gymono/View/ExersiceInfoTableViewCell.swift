//
//  ExersiceTableViewCell.swift
//  Gymono
//
//  Created by Ali Asadi on 1/28/1401 AP.
//

import Foundation
import UIKit

class ExersiceInfoTableViewCell:BaseTableViewCell{
    
    @IBOutlet weak var title:UILabel!
    @IBOutlet weak var exersiceImage:UIImageView!
    
    override func bind(object: Any) {
        
        let content = object as? ExercisesInfo
        title.text = content?.name
        
        DispatchQueue.main.async {
            self.exersiceImage.image = (content?.images?.count ?? 0 > 0) ? ImageTools.loadMyImage(urlString: (content?.images?.first?.image ?? ""))  : UIImage(named: "placeholder")
        }
    }
    
    override func setListerners() {
        super.setListerners()
    }
    
    override func forwardAction() {
        //seque to detial VC
    }
}
