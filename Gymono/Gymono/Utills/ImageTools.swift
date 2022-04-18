//
//  Tools.swift
//  HomeTaskForPayback
//
//  Created by Ali Asadi on 1/19/1401 AP.
//

import UIKit

class ImageTools{
    
   static func loadMyImage(urlString : String)->UIImage {
       guard let url = URL(string: urlString) else {return UIImage()}
       if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                        return image
                }
            }
        return UIImage().self
    }
}
