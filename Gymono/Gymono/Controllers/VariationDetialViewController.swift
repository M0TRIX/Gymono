//
//  VariationDetialViewController.swift
//  Gymono
//
//  Created by Ali Asadi on 1/30/1401 AP.
//

import UIKit

class VariationDetialViewController: BaseViewController {
    
    @IBOutlet weak var variationName: UILabel!
    @IBOutlet weak var variationImage: UIImageView!
    @IBOutlet weak var variationDescription: UILabel!
    
    var varId:Int?
    var variationViewModel:VariationViewModel?
    
    static func createInstance()->VariationDetialViewController{
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "VariationDetialViewController") as! VariationDetialViewController
        return newViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getExerciseById()
    }
    
    func getExerciseById(){
        variationViewModel?.getExerciseInfoById(variationId: self.varId ?? 0, complition: { exercise in
            DispatchQueue.main.async {
                let imageUrl = self.variationViewModel?.exercise?.images?.first?.image ?? ""
                self.variationName.text = self.variationViewModel?.exercise?.name
                self.variationImage.image = imageUrl != "" ? ImageTools.loadMyImage(urlString: imageUrl) : UIImage(named: "placeholder")
                self.variationDescription.text = (self.variationViewModel?.exercise?.resultDescription ?? "").stringFormater
            }
        })
    }
    
 
}
