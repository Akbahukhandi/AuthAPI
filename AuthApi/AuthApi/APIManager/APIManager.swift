//
//  APIManager.swift
//  AuthApi
//
//  Created by FicodeMacBookAir on 20/02/22.
//

import Foundation
import Alamofire
class APIManager{
    static let shareInstance = APIManager()
    func callingRegisterApi(register: RegisterModal){
        let headers: HTTPHeaders = [
            .contentType("application/json")]
        AF.request(registration_url, method: .post, parameters: register, encoder: JSONParameterEncoder.default, headers: headers).response{response in
            debugPrint(response)
            switch response.result{
            case.success(let data):
                do{
                    let json = try JSONSerialization.jsonObject(with: data!, options: [])
                    print(json)
                }catch{
                    print(error.localizedDescription)
                }
            case.failure(let err):
            print(err.localizedDescription)
            }
            
        }
        
    }
}
