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
    
//    func getListOfExersises(completion:@escaping(Exercise, URLResponse,Data)->()){
//        let url = "https://wger.de/api/v2/exercise/?format=json"
//        let urlRequest = URLRequest(url: URL(string: url)!)
//        URLSession.shared.dataTask(with: urlRequest) { data, response, error in
//            guard let data = data else { return }
//            let decoder = JSONDecoder()
//            let list = try? decoder.decode(Exercise.self, from: data)
//            completion(list ?? Exercise(),response ?? URLResponse(),data)
//        }.resume()
        
        func getListOfExersiceInfo(completion:@escaping(ExerciseInfo, URLResponse,Data)->()){
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

