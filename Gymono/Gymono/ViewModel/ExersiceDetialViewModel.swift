//
//  Gymono
//
//  Created by Ali Asadi on 1/30/1401 AP.
//

import Foundation

class ExerciseDetailViewModel{
    
    var controller:ExerciseDetialViewController?
    
    var allExerciseList:ExerciseInfo?
        
    init(context:ExerciseDetialViewController) {
        self.controller = context
    }
    
    init(){}
    
}
