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
    
    var content:ExercisesInfo?
    
    override func bind(object: Any?) {
        super.bind(object: nil)
        content = object as? ExercisesInfo
        title.text = content?.name
        
        DispatchQueue.main.async {
            self.exersiceImage.image = (self.content?.images?.count ?? 0 > 0) ? ImageTools.loadMyImage(urlString: (self.content?.images?.first?.image ?? ""))  : UIImage(named: "placeholder")
        }
    }
    
    override func setListerners() {
        super.setListerners()
    }
    
    override func forwardAction() {
        let vc = ExerciseDetialViewController.createInstance()
        vc.exercisesInfoList = content
        vc.modalPresentationStyle = .fullScreen
        self.currentController!.navigationController!.pushViewController(vc, animated: true)
    }
}
