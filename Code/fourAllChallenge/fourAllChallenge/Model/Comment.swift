//
//  Comment.swift
//  fourAllChallenge
//
//  Created by Bruno Dorneles on 19/11/18.
//  Copyright © 2018 Bruno. All rights reserved.
//

import UIKit
import ObjectMapper
class Comment: Mappable {
    var comment = ""
    var title = ""
    var name = ""
    var grade = 0
    var urlPicture = ""
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
         comment <- map["comentario"]
         title <- map["titulo"]
         name <- map["nome"]
         grade <- map["nota"]
         urlPicture <- map["urlFoto"]
    }
}
