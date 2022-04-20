//
//  Gymono
//
//  Created by Ali Asadi on 1/29/1401 AP.
//

import Foundation
import UIKit

class ExerciseDetailCollection:BaseCollectionView{
    
    @IBOutlet weak var exerciseImage:UIImageView!
    
    override func bind(object: Any) {
        let image = object as? ExerciseImage
            DispatchQueue.main.async {
                self.exerciseImage.image = (image?.image != nil) ? ImageTools.loadMyImage(urlString: (image?.image ?? ""))  : UIImage(named: "placeholder")
        }
    }
}
