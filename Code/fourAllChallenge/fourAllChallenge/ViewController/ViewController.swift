//
//  ViewController.swift
//  fourAllChallenge
//
//  Created by Bruno Dorneles on 19/11/18.
//  Copyright © 2018 Bruno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var tasks = [Task]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
        
        Request.requestListOfTasks(completion: {[weak self] taskList in
            for taskID in (taskList?.idList)! {
                Request.requestTask(id: taskID, completion: {[weak self] task in
                    self?.tasks.append(task!)
                })
            }
        })
    }


}

