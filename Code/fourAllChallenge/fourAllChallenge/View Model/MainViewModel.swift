//
//  MainViewModel.swift
//  fourAllChallenge
//
//  Created by Bruno Dorneles on 20/11/18.
//  Copyright © 2018 Bruno. All rights reserved.
//

import UIKit
protocol MainViewModelProtocol : class {
    func didDownloadTask()
}

class MainViewModel {
    weak var delegate : MainViewModelProtocol?
    
    var taskId : String!
    var task : Task?
    init(taskId : String) {
        self.taskId = taskId
    }
    
    func requestTask(){
        Request.requestTask(id: taskId, completion: {[weak self] task in
            guard  task != nil else {return}
            self?.task = task
            self?.delegate?.didDownloadTask()
        })
    }

}
