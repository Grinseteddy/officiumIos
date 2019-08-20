//
//  Tasks.swift
//  Officium
//
//  Created by Annegret Junker on 20.08.19.
//  Copyright © 2019 Annegret Junker. All rights reserved.
//

import Foundation

class Tasks {
    
    var tasks: [Task]=[Task]()
    
    var urlAsString: String=ApplicationSettings.taskManagementForProjectAsString
    
    var loaded: Bool=false
    
    init () {
        loaded=false
    }
    
    func load(projectId: String) {
        if self.loaded {
            return
        }
        if let url = URL(string: urlAsString+projectId) {
            URLSession.shared.dataTask(with: url) {data,response,error in
                if let data = data {
                    do {
                        //TODO Handle errors accordingly
                        
                        self.tasks = try JSONDecoder().decode([Task].self, from: data)
                        for task in self.tasks {
                            print(task.name)
                        }
                        self.loaded=true;
                    } catch let error {
                        print(error)
                    }
                }
            } .resume()
        }
    }
}
