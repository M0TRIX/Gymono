//
//  Exerciseinfo.swift
//  Gymono
//
//  Created by Ali Asadi on 1/27/1401 AP.
//

import Foundation

class ExercisesInfo: Decodable {
    
    let id: Int?
    let name, uuid: String?
    let exerciseBaseID: Int?
    let resultDescription, creationDate: String?
    let licenseAuthor: String?
    let images: [ExerciseImage]?
    let variations: [Int]?

    enum CodingKeys: String, CodingKey {
        case id, name, uuid
        case exerciseBaseID = "exercise_base_id"
        case resultDescription = "description"
        case creationDate = "creation_date"
        case licenseAuthor = "license_author"
        case images, variations
    }
}
