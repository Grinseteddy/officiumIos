//
//  ProjectsModel.swift
//  Officium
//
//  Created by Annegret Junker on 19.08.19.
//  Copyright © 2019 Annegret Junker. All rights reserved.
//

import Foundation
import UIKit

class ProjectsModel {

    var projects: [ProjectModel]=[]

    //TODO Singleton for application settings
    
    let urlAsString : String = "http://ec2-3-120-34-138.eu-central-1.compute.amazonaws.com:5001/projects"
    var request: NSMutableURLRequest=NSMutableURLRequest()
    
    init() {
        load()
    }
    
    func load() {
        if let url = URL(string: urlAsString) {
            URLSession.shared.dataTask(with: url) {data,response,error in
                if let data = data {
                    do {
                        self.projects = try JSONDecoder().decode([ProjectModel].self, from: data)
                        for project in self.projects {
                            print(project.name)
                        }   
                    } catch let error {
                        print(error)
                    }
                }
            } .resume() 
        }
    }
    
    func fillWithMockup(){
        let project: ProjectModel=ProjectModel()
        project.name="First Project"
        projects.append(project)
        let project2: ProjectModel=ProjectModel()
        project2.name="Second Project"
        projects.append(project2)
        let project3: ProjectModel=ProjectModel()
        project3.name="Third Project"
        projects.append(project3)
    }
}


