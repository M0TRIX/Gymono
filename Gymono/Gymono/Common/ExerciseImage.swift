//
//  Image.swift
//  Gymono
//
//  Created by Ali Asadi on 1/27/1401 AP.
//

import Foundation

class ExerciseImage: Decodable {
    let id: Int
    let uuid: String
    let exerciseBase: Int
    let image: String
    let isMain: Bool
    let status, style: String

    enum CodingKeys: String, CodingKey {
        case id, uuid
        case exerciseBase = "exercise_base"
        case image
        case isMain = "is_main"
        case status, style
    }
}
