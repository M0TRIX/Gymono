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
    
    var exerciseList:ExerciseInfo?
    
    init(context:MainViewController) {
        self.controller = context
    }
    
    init() {}
    
    func getExersiceInfo(complition:@escaping(ExerciseInfo)->()){
        
        ServiceApi.shared.getListOfExersiceInfo { [weak self] exersice,response,data  in
            
            let error = ServiceValidator.checkResposnse(response: response, data: data)
            
            if error == ServiceError.SUCCESS {
                self?.exerciseList = ExerciseInfo()
                self?.exerciseList?.results = []
                self?.exerciseList?.results = exersice.results
                complition(exersice)
            }else{
                MessageUtill.makeMessage(title: "Network call error", body: "\(error)", controller: self?.controller ?? UIViewController())
            }
        }
    }
}
