//
//  Request.swift
//  fourAllChallenge
//
//  Created by Bruno Dorneles on 19/11/18.
//  Copyright © 2018 Bruno. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper
class Request {

    static func requestListOfTasks(completion:@escaping(Tasklist?)->()){
        let url = API.url_tasksList
        Alamofire.request(url,method: .get, parameters : nil, headers : nil).responseObject(completionHandler: {(response:DataResponse<Tasklist>) in
           completion(response.value)
        })
    }

    static func requestTask( id : String , completion: @escaping(Task?)->()){
        let url = String(format: API.url_taskID, id)
        Alamofire.request(url,method: .get, parameters : nil, headers : nil).responseObject(completionHandler: {(response:DataResponse<Task>) in
            completion(response.value)
        })
        
    }
}
