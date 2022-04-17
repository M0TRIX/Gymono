//
//  CheckResponse.swift
//  HomeTaskForPayback
//
//  Created by Ali Asadi on 1/20/1401 AP.
//

import Foundation

class ServiceValidator{
    
    static func checkResposnse(response:URLResponse,data:Data?)->ServiceError{
        
        guard let _ = data else{
            return ServiceError.INVALIDRESPONSE
        }
        let response = response as? HTTPURLResponse
        
        switch  response?.statusCode {
        case 200:
            return ServiceError.SUCCESS
        case 400:
            return ServiceError.BADREQUEST
        case 401:
            return ServiceError.UNAUTHORIZE
        case 402,403:
            return ServiceError.FORBIDDEN
        default:
            return ServiceError.SERVERERROR
        }
        
    }
}
