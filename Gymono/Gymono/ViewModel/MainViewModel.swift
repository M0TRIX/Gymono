//
//  MainViewModel.swift
//  HomeTaskForPayback
//
//  Created by Ali Asadi on 1/21/1401 AP.
//

import Foundation
import UIKit

class MainViewModel {
    
    var controller:MainViewController?
    
    var exerciseList:Exercise?
    
    init(context:MainViewController) {
        self.controller = context
    }
    
    init() {}
    
    func getExersises(complition:@escaping(Exercise)->()){
        
        ServiceApi.shared.getListOfExersises { [weak self] exersice,response,data  in
            
            let error = ServiceValidator.checkResposnse(response: response, data: data)
            
            if error == ServiceError.SUCCESS {
                self?.exerciseList?.results?.removeAll()
                self?.exerciseList?.results = []
                complition(exersice)
            }else{
                MessageUtill.makeMessage(title: "Network call error", body: "\(error)", controller: self?.controller ?? UIViewController())
            }
        }
    }

}
