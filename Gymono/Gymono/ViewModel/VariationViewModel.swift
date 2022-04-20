//
//  VariationViewModel.swift
//  Gymono
//
//  Created by Ali Asadi on 1/31/1401 AP.
//

import Foundation

class VariationViewModel{
    
    var controller:VariationDetialViewController?
    
    var exercise:ExercisesInfo?
    
    init(context:VariationDetialViewController) {
        self.controller = context
    }
    
    init() {}
    
    func getExerciseInfoById(variationId:Int,complition:@escaping(ExercisesInfo)->()){
        
        ServiceApi.shared.getExerciseInfoById(exerciseID: variationId) { [weak self] exercise,response,data  in
            
            let error = ServiceValidator.checkResposnse(response: response, data: data)
            
            if error == ServiceError.SUCCESS {
                self?.exercise = exercise
                complition(exercise)
            }else{
                MessageUtill.makeMessage(title: "Network call error", body: "\(error)", controller: (self?.controller!)!)
            }
        }
    }
}
