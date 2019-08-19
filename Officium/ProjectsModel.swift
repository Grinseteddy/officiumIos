//
//  ProjectsModel.swift
//  Officium
//
//  Created by Annegret Junker on 19.08.19.
//  Copyright © 2019 Annegret Junker. All rights reserved.
//

import Foundation

class ProjectsModel {

    var projects: [ProjectModel]=[]

    //TODO Singleton for application settings
    
    
    
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


