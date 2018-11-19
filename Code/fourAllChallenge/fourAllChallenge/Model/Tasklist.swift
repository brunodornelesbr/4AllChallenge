//
//  Tasklist.swift
//  fourAllChallenge
//
//  Created by Bruno Dorneles on 19/11/18.
//  Copyright © 2018 Bruno. All rights reserved.
//

import UIKit
import ObjectMapper

class Tasklist : Mappable {
    var idList = [String]()
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        idList <- map["lista"]
    }

}
