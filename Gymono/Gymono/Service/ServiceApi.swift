//
//  ServiceApi.swift
//  HomeTaskForPayback
//
//  Created by Ali Asadi on 1/20/1401 AP.
//


import UIKit
import Foundation

class ServiceApi {
    
    static var shared = ServiceApi()
    
    func getExerciseInfoById(exerciseID:Int,completion:@escaping(ExercisesInfo, URLResponse,Data)->()){
        let url = "https://wger.de/api/v2/exerciseinfo/\(exerciseID)/?format=json"
        let urlRequest = URLRequest(url: URL(string: url)!)
        
        URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            guard let data = data else { return }
            let decoder = JSONDecoder()
            let content = try? decoder.decode(ExercisesInfo.self, from: data)
            completion(content!,response ?? URLResponse(),data)
        }.resume()
    }
    
    func getListOfExerciseInfo(completion:@escaping(ExerciseInfo, URLResponse,Data)->()){
        let url = "https://wger.de/api/v2/exerciseinfo/?format=json"
        let urlRequest = URLRequest(url: URL(string: url)!)
        
        URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            guard let data = data else { return }
            let decoder = JSONDecoder()
            let list = try? decoder.decode(ExerciseInfo.self, from: data)
            completion(list ?? ExerciseInfo(),response ?? URLResponse(),data)
        }.resume()
    }
}

