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
    
    override func bind(object: Any?) {
        let content = object as? ExercisesInfo
        variationsTitle.text = content?.name
    }
}
