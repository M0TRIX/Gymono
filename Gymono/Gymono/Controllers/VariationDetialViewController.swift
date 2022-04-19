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
    
    var exercisesInfoList:ExercisesInfo?
    
    static func createInstance()->VariationDetialViewController{
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "VariationDetialViewController") as! VariationDetialViewController
        return newViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let imageUrl = exercisesInfoList?.images?.first?.image ?? ""
        
        variationName.text = exercisesInfoList?.name
        variationImage.image = imageUrl != "" ? ImageTools.loadMyImage(urlString: exercisesInfoList?.images?.first?.image ?? "") : UIImage(named: "placeholder")
        variationDescription.text = stringFormater(desciption: exercisesInfoList?.resultDescription ?? "")
    }
  
    func stringFormater(desciption:String)->String{
        return (desciption.replacingOccurrences(of: "</p>", with: "").replacingOccurrences(of: "<p>", with: "").replacingOccurrences(of: "<li>", with: "").replacingOccurrences(of: "</li>", with: "").replacingOccurrences(of: "</ul>", with: "").replacingOccurrences(of: "<ul>", with: ""))
    }
}
