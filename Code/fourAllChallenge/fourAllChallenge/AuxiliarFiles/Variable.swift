//
//  Variable.swift
//  fourAllChallenge
//
//  Created by Bruno Dorneles on 19/11/18.
//  Copyright © 2018 Bruno. All rights reserved.
//

import Foundation

import Foundation

class Variable<T> {
    
    typealias Listener = (T) -> Void
    var listener: Listener?
    
    var value: T?{
        didSet{
            listener?(value!)
        }
    }
    
    func bind(listener: Listener?){
        self.listener = listener
        listener?(value!)
    }
    
    init(_ v:T) {
        value = v
    }
}
