//
//  ExersiceDetailCollection.swift
//  Gymono
//
//  Created by Ali Asadi on 1/29/1401 AP.
//

import Foundation
import UIKit

class ExersiceDetailCollection:BaseCollectionView{
    
    @IBOutlet weak var exersiceImage:UIImageView!
    
    override func bind(object: Any) {
        let image = object as? ExerciseImage
        DispatchQueue.main.async {
            self.exersiceImage.image = (image?.image != nil) ? ImageTools.loadMyImage(urlString: (image?.image ?? ""))  : UIImage(named: "placeholder")
        }
    }
}
