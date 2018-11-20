//
//  API.swift
//  fourAllChallenge
//
//  Created by Bruno Dorneles on 19/11/18.
//  Copyright © 2018 Bruno. All rights reserved.
//

import Foundation

struct API {
    static let api_base = "http://dev.4all.com:3003"
    static let url_tasksList = "\(API.api_base)/tarefa"
    static let url_taskID = "\(API.api_base)/tarefa/%@"
}
