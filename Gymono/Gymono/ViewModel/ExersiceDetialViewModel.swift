//
//  ExersiceDetialViewModel.swift
//  Gymono
//
//  Created by Ali Asadi on 1/30/1401 AP.
//

import Foundation

class ExersiceDetailViewModel{
    
    var controller:ExerciseDetialViewController?
    
    var allExerciseList:ExerciseInfo?
    
    var filteredExerciseList:[ExercisesInfo]?

    init(context:ExerciseDetialViewController) {
        self.controller = context
    }
    
    init(){}
    
    
    func getAllExersises(complition:@escaping(ExerciseInfo)->()){
        ServiceApi.shared.getListOfAllExersiciseInfo { [weak self] allExersises,response,data  in
            
            let error = ServiceValidator.checkResposnse(response: response, data: data)
            
            if error == ServiceError.SUCCESS {
                self?.allExerciseList = ExerciseInfo()
                self?.allExerciseList?.results = []
                self?.allExerciseList?.results = allExersises.results
                print("allExersises",allExersises.results?.count)
                complition(allExersises)
            }else{
                MessageUtill.makeMessage(title: "Network call error", body: "\(error)", controller: self?.controller ?? BaseViewController())
            }
        }
    }
    
    func findVariations(exercisesInfoList:ExercisesInfo){
        self.filteredExerciseList = []
        exercisesInfoList.variations?.forEach({ variationID in
            allExerciseList?.results?.forEach({ exercise in
                if exercise.id == variationID {
                    self.filteredExerciseList?.append(exercise)
                }
            })
        })
    }
    
}
